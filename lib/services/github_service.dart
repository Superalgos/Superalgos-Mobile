import 'package:github/github.dart';
import 'package:oauth2_client/github_oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';

class GithubServices {
  String token;
  String authenticatedUsername;
  GitHub instance;

  GithubServices(this.token, this.authenticatedUsername)
      : instance = GitHub(auth: Authentication.withToken(token));

  Future<Repository> getSAFork() async {
    RepositorySlug repoSlug =
        RepositorySlug(authenticatedUsername, "superalgos");
    var repository = await instance.repositories.getRepository(repoSlug);
    return repository;
  }

  void updateSAFork() {}

  void createSAForkIfNotExist() {}

  void addUserProfileToSAFork() {}

  void createPRToSAOriginFromSAFork() {}
}
