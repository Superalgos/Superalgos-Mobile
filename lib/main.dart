import 'package:app/pages/landing.dart';
import 'package:app/pages/dashboard.dart';
import 'package:app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'utils/palette.dart';
import 'model/user_model.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => UserModel())],
    child: const SuperAlgoApp(),
  ));
}

class SuperAlgoApp extends StatelessWidget {
  const SuperAlgoApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _loggedIn = Provider.of<UserModel>(context, listen: false).isLoggedIn;

    return MaterialApp(
      title: 'Superalgos',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const Dashboard(),
      },
      initialRoute: _loggedIn ? "/home" : "/login",
      theme: ThemeData(
        primarySwatch: Palette.saBlue,
      ),
    );
  }
}



