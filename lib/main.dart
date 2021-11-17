import 'package:app/pages/dashboard.dart';
import 'package:app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'utils/palette.dart';
import 'model/user_repository.dart';

void main() {
  runApp(
      MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => UserRepository())],
    child: const SuperAlgoApp(),
  ));
}

class SuperAlgoApp extends StatelessWidget {
  const SuperAlgoApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Superalgos',
      theme: ThemeData(
        primarySwatch: Palette.saBlue,
      ),
      home: const Home()
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<UserRepository>(
        builder: (context, UserRepository user, _) {
          switch(user.status) {
            case Status.Uninitialized:
              return const Splash();
            case Status.Authenticated:
              return const Dashboard();
            case Status.Authenticating:
            case Status.Unauthenticated:
              return const LoginScreen();
          }
        }
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Welcome to Superalgos")));
  }
}
