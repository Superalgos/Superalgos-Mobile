import 'package:app/feature/userprofile/model/user_model.dart';
import 'package:app/feature/userprofile/state/user_profile_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';

import 'package:web3dart/credentials.dart';
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

final userProfileProvider =
    StateNotifierProvider<UserProfileProvider, UserProfileState>((ref) {
  return UserProfileProvider(ref.read);
});

class UserProfileProvider extends StateNotifier<UserProfileState> {
  UserProfileProvider(this._reader) : super(const UserProfileState.loading()) {
    _init();
  }

  final Reader _reader;



  Future<void> _init() async {
    print("init user profile state");
    final githubService = _reader(githubServiceProvider);
    final userName =
        await githubService.userName().then((value) => value.login!);
    final saFork = await githubService.getSAFork();
    final userProfileContent = await githubService.getUserProfileFromGit();

    final Codec<String, String> stringToBase64 = utf8.fuse(base64);
    // We know for sure that we have a profile created
    // so it's safe to get it
    // information is being checked at the User Profile Page provider
    var file = userProfileContent!.file!.content!;
    var contents = stringToBase64.decode(file.replaceAll(RegExp("(\\n)"), ""));

    state = UserProfileState.profileLoaded(UserModel(
        userName: userName,
        userProfileContent: contents,
        saFork: saFork));
  }
}
