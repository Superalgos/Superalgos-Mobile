import 'package:flutter/foundation.dart';
import 'package:github/github.dart';
import 'package:oauth2_client/access_token_response.dart';
import 'package:oauth2_client/github_oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';

enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated }

class UserRepository extends ChangeNotifier {
  OAuth2Helper oauth2Helper = OAuth2Helper(
      GitHubOAuth2Client(redirectUri: "sa://auth", customUriScheme: "sa"),
      grantType: OAuth2Helper.AUTHORIZATION_CODE,
      clientId: '855f1d6bdce2d9b6fe92',
      clientSecret: 'c88786e93b95f8905f7e05a14786150edafb301a',
      scopes: ['repo', 'user']);
  CurrentUser? _user;
  Status _status = Status.Uninitialized;

  UserRepository() {
    _autoLogin();
  }

  Status get status => _status;

  CurrentUser? get user => _user;

  Future<bool> signIn() async {
    try {
      _status = Status.Authenticating;
      notifyListeners();
      var token = await oauth2Helper.getToken();
      _getGithubUser(token);
      return true;
    } catch (e) {
      _status = Status.Unauthenticated;
      notifyListeners();
      return false;
    }
  }

  Future<void> _autoLogin() async {
    var token = await oauth2Helper.getToken();
    _getGithubUser(token);
  }

  void _getGithubUser(AccessTokenResponse? token) {
    if (token != null) {
      var github = GitHub(auth: Authentication.withToken(token.accessToken));
      github.users.getCurrentUser().then((final CurrentUser user) {
        _onAuthStateChanged(user);
      });
    }
  }

  Future signOut() async {
    oauth2Helper.disconnect().then((value) {
      _status = Status.Unauthenticated;
      notifyListeners();
      return Future.delayed(Duration.zero);
    });
  }

  Future<void> _onAuthStateChanged(CurrentUser? githubUser) async {
    if (githubUser == null) {
      _status = Status.Unauthenticated;
    } else {
      _user = githubUser;
      _status = Status.Authenticated;
    }
    notifyListeners();
  }
}
