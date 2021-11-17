import 'package:app/model/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/services/github_service.dart';

class Dashboard extends StatelessWidget {

  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Info"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(Provider.of<UserRepository>(context).user!.login!),
            // Text(Provider.of<UserRepository>(context).gitUserProfile!),
            ElevatedButton(
              child: const Text("Sign out"),
              onPressed: () => Provider.of<UserRepository>(context, listen: false).signOut(),
            )
          ],
        ),
      ),
    );
  }
}