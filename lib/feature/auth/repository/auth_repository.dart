import 'package:app/feature/auth/model/auth_state.dart';
import 'package:app/utils/app_exception.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oauth2_client/github_oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';


abstract class AuthRepositoryInterface {
  Future<AuthState> signIn();

  Future<void> signOut();
}

// Global, used for DI
final authRepositoryProvider = Provider((ref) => AuthRepository(ref.read));

OAuth2Helper oAuth2Helper = OAuth2Helper(
    GitHubOAuth2Client(redirectUri: "sa://auth", customUriScheme: "sa"),
    grantType: OAuth2Helper.AUTHORIZATION_CODE,
    clientId: '855f1d6bdce2d9b6fe92',
    clientSecret: 'c88786e93b95f8905f7e05a14786150edafb301a',
    enableState: false,
    scopes: ['repo', 'user']);

final oauth2HelperProvider = Provider((ref) => oAuth2Helper);

class AuthRepository implements AuthRepositoryInterface {
  AuthRepository(this._reader) {}

  final Reader _reader;


  @override
  Future<AuthState> signIn() async {
    final oAuth2Helper = _reader(oauth2HelperProvider);
    try {
      var token = await oAuth2Helper.getToken();
      return const AuthState.loggedIn();
    } catch (e) {
      return const AuthState.error(
          AppException.errorWithMessage("Invalid login"));
    }
  }

  @override
  Future<void> signOut() async {
    final oAuth2Helper = _reader(oauth2HelperProvider);
    var response = await oAuth2Helper.disconnect();

  }

// void _getSAUserProfile() {
//   final oAuth2Helper = _reader(oauth2HelperProvider);
//   try {
//     oAuth2Helper.getToken().then((token) {
//       GithubServices gh = GithubServices(token!.accessToken!, _user!.login!);
//       gh.getUserProfileFromGit().then((repoContent) {
//         _gitUserProfile = repoContent.isFile
//             ? stringToBase64.decode(repoContent.file!.content!)
//             : "";
//         print(_gitUserProfile);
//
//       });
//     });
//   } catch (e) {
//     return;
//   }
// }

// void _getGithubUser(AccessTokenResponse? token) {
//   if (token != null) {
//     var github = GitHub(auth: Authentication.withToken(token.accessToken));
//     github.users.getCurrentUser().then((final CurrentUser user) {
//       _onAuthStateChanged(user);
//     });
//   }
// }

//
// Future<void> _onAuthStateChanged(CurrentUser? githubUser) async {
//   if (githubUser == null) {
//     _status = Status.Unauthenticated;
//   } else {
//     _user = githubUser;
//     _status = Status.Authenticated;
//   }
//   notifyListeners();
// }
}
