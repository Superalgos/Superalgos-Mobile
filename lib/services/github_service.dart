import 'dart:convert';

import 'package:github/github.dart';

class GithubServices {
  String token;
  String authenticatedUsername;
  GitHub instance;
  RepositorySlug saRepoSlug;
  String jsonFileExt = '.json';
  String userProfileBranch = 'develop';

  GithubServices(this.token, this.authenticatedUsername)
      : instance = GitHub(auth: Authentication.withToken(token)),
        saRepoSlug = RepositorySlug(authenticatedUsername, "superalgos");

  Future<Repository> getSAFork() async {
    var repository = await instance.repositories.getRepository(saRepoSlug);
    return repository;
  }

  Future<RepositoryContents> getUserProfileFromGit() async {
    var fileContent = instance.repositories.getContents(saRepoSlug,
        'Projects/Governance/Plugins/User-Profiles/${authenticatedUsername + jsonFileExt}',
        ref: userProfileBranch);

    return fileContent;
  }

  void updateSAFork() {}

  void createSAForkIfNotExist() {}

  void addUserProfileToSAFork() {}

  void createPRToSAOriginFromSAFork() {}
}
