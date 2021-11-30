import 'dart:convert';

import 'package:app/feature/auth/repository/auth_repository.dart';
import 'package:app/feature/auth/repository/github_oauth_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/github.dart';
import 'package:oauth2_client/oauth2_helper.dart';

 abstract class GithubService {
  Future<Repository?> getSAFork();

  Future<Repository> createSAFork();

  Future<CurrentUser> userName();

  Future<RepositoryContents?> getUserProfileFromGit();

  Future<ContentCreation> addUserProfileToSAFork(String userProfileContent);

  Future<PullRequest> createPullRequestFromUserFork();

  Future<bool> deleteFork();
}

final githubServiceProvider =
    Provider<GithubService>((ref) => GithubServiceProvider(ref.read));

class GithubServiceProvider implements GithubService {
  final Reader _reader;
  late GithubOauthHelper oAuth2Helper = _reader(oauth2HelperProvider);
  String jsonFileExt = '.json';
  String superAlgosOrg = 'Superalgos';
  String userProfileBranch = 'develop';
  String userProfileLocation = 'Projects/Governance/Plugins/User-Profiles/';
  String userProfilePRTitle = 'Contribution: userprofile ';

  GithubServiceProvider(this._reader);

  @override
  Future<Repository?> getSAFork() async {
    var token = await oAuth2Helper.getTokenFromStorage();
    var instance = GitHub(auth: Authentication.withToken(token!.accessToken));
    var currentUser = await instance.users.getCurrentUser();
    var repoSlug = RepositorySlug(currentUser.login!, superAlgosOrg);
    try {
      var repository = await instance.repositories.getRepository(repoSlug);
      return repository;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<Repository> createSAFork() async {
    var token = await oAuth2Helper.getToken();
    var instance = GitHub(auth: Authentication.withToken(token!.accessToken));
    var repoSlug = RepositorySlug(superAlgosOrg, superAlgosOrg);

    return instance.repositories.createFork(repoSlug);
  }

  @override
  Future<RepositoryContents?> getUserProfileFromGit() async {
    try {
      var token = await oAuth2Helper.getToken();
      var instance = GitHub(auth: Authentication.withToken(token!.accessToken));
      var currentUser = await instance.users.getCurrentUser();
      var repoSlug = RepositorySlug(currentUser.login!, superAlgosOrg);
      var fileContent = await instance.repositories.getContents(
          repoSlug, userProfileLocation + currentUser.login! + jsonFileExt,
          ref: userProfileBranch);

      return fileContent;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<CurrentUser> userName() async {
    var token = await oAuth2Helper.getToken();
    var instance = GitHub(auth: Authentication.withToken(token!.accessToken));

    return instance.users.getCurrentUser();
  }

  @override
  Future<ContentCreation> addUserProfileToSAFork(
      String userProfileContent) async {
    var token = await oAuth2Helper.getToken();
    var instance = GitHub(auth: Authentication.withToken(token!.accessToken));
    var currentUser = await instance.users.getCurrentUser();
    var repoSlug = RepositorySlug(currentUser.login!, superAlgosOrg);
    final Codec<String, String> stringToBase64 = utf8.fuse(base64);

    var file = CreateFile(
        message: "create user profile",
        path: userProfileLocation + currentUser.login! + jsonFileExt,
        branch: userProfileBranch,
        content: stringToBase64.encode(userProfileContent));

    var content = await instance.repositories.createFile(repoSlug, file);

    return content;
  }

  @override
  Future<PullRequest> createPullRequestFromUserFork() async {
    var token = await oAuth2Helper.getToken();
    var instance = GitHub(auth: Authentication.withToken(token!.accessToken));
    var currentUser = await instance.users.getCurrentUser();
    var repoSlug = RepositorySlug(superAlgosOrg, superAlgosOrg);

    final prRequest = CreatePullRequest(userProfilePRTitle + currentUser.login!,
        "${currentUser.login!}:$userProfileBranch", userProfileBranch);

    var pr = await instance.pullRequests.create(repoSlug, prRequest);

    return pr;
  }

  @override
  Future<bool> deleteFork() async {
    var token = await oAuth2Helper.getToken();
    var instance = GitHub(auth: Authentication.withToken(token!.accessToken));
    var currentUser = await instance.users.getCurrentUser();
    var repoSlug = RepositorySlug(currentUser.login!, superAlgosOrg);

    var deleted = await instance.repositories.deleteRepository(repoSlug);

    return deleted;
  }
}
