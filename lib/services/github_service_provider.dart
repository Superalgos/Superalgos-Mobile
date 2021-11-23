import 'dart:convert';

import 'package:app/feature/auth/repository/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/github.dart';
import 'package:oauth2_client/oauth2_helper.dart';

abstract class GithubService {
  Future<Repository?> getSAFork();
  Future<CurrentUser> userName();
  Future<RepositoryContents> getUserProfileFromGit();
}

final githubServiceProvider =
    Provider<GithubService>((ref) => GithubServiceProvider(ref.read));

class GithubServiceProvider implements GithubService {
  final Reader _reader;
  late OAuth2Helper oAuth2Helper = _reader(oauth2HelperProvider);
  String jsonFileExt = '.json';
  String userProfileBranch = 'develop';
  String superAlgosOrg = 'superalgos';

  GithubServiceProvider(this._reader);

  @override
  Future<Repository?> getSAFork() async {
    var token = await oAuth2Helper.getToken();
    var instance = GitHub(auth: Authentication.withToken(token!.accessToken));
    var currentUser = await instance.users.getCurrentUser();
    var repoSlug = RepositorySlug(currentUser.login!, superAlgosOrg);
    var repository = await instance.repositories.getRepository(repoSlug);
    return repository;
  }

  @override
  Future<RepositoryContents> getUserProfileFromGit() async {
    var token = await oAuth2Helper.getToken();
    var instance = GitHub(auth: Authentication.withToken(token!.accessToken));
    var currentUser = await instance.users.getCurrentUser();
    var repoSlug = RepositorySlug(currentUser.login!, superAlgosOrg);
    var fileContent = instance.repositories.getContents(repoSlug,
        'Projects/Governance/Plugins/User-Profiles/${currentUser.login! + jsonFileExt}',
        ref: userProfileBranch);

    return fileContent;
  }

  @override
  Future<CurrentUser> userName() async {
    var token = await oAuth2Helper.getToken();
    var instance = GitHub(auth: Authentication.withToken(token!.accessToken));
    return instance.users.getCurrentUser();

  }

  void updateSAFork() {}

  void createSAForkIfNotExist() {}

  void addUserProfileToSAFork() {}

  void createPRToSAOriginFromSAFork() {}
}
