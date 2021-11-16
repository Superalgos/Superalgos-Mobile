import 'package:flutter/foundation.dart';

class UserModel extends ChangeNotifier {

  bool _loggedIn = false;
  String _userName = "";


  String get userName => _userName;

  set userName(String value) {
    _userName = value;
    notifyListeners();
  }

  bool get isLoggedIn => _loggedIn;

  void loggedInSuccessful() {
    _loggedIn = true;
    notifyListeners();
  }
}
