import 'package:app/model/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle loginButtonStyle =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
        appBar: AppBar(
          title: const Text("Login to continue"),
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
    final userRepository = Provider.of<UserRepository>(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          userRepository.status == Status.Authenticating ?
          const Center(child: CircularProgressIndicator()) :
          ElevatedButton(
            style: style,
            onPressed: () async {
              userRepository.signIn();
            },
            child: const Text('Login with Github'),
          ),
        ],
      ),
    );
  }
}
