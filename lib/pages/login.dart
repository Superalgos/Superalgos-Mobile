import 'package:flutter/material.dart';

import 'package:github/github.dart';
import 'package:oauth2_client/github_oauth2_client.dart';
import 'package:oauth2_client/oauth2_helper.dart';

GitHubOAuth2Client client =
    GitHubOAuth2Client(redirectUri: "sa://auth", customUriScheme: "sa");

//TODO: Obfuscate code for obvious reasons
OAuth2Helper oauth2Helper = OAuth2Helper(client,
    grantType: OAuth2Helper.AUTHORIZATION_CODE,
    clientId: '855f1d6bdce2d9b6fe92',
    clientSecret: 'c88786e93b95f8905f7e05a14786150edafb301a',
    scopes: ['repo', 'user']);

Future<void> fetchUserProfile(BuildContext context) async {
  var token = await oauth2Helper.getToken();
  var github = GitHub(auth: Authentication.withToken(token!.accessToken));

  Repository repo = await github.repositories
      .getRepository(RepositorySlug("Superalgos", "superalgos"));

  print(repo.description);

  // if (userProfile != null) {
  //   context.read<UserModel>().loggedInSuccessful();
  // }
  // var userProfile =
  // await oauth2Helper.get('https://api.github.com/users/alexandrustefan');
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle loginButtonStyle =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
        appBar: AppBar(
          title: const Text("Superalgos"),
        ),
        body: Login(style: loginButtonStyle));
  }
}

class Login extends StatelessWidget {
  const Login({
    Key? key,
    required this.style,
  }) : super(key: key);

  final ButtonStyle style;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {
              fetchUserProfile(context);
            },
            child: const Text('Login with Github'),
          ),
        ],
      ),
    );
  }
}
