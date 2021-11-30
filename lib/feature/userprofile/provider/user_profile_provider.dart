import 'package:app/feature/auth/provider/auth_provider.dart';
import 'package:app/feature/onboarding/model/config_model.dart';
import 'package:app/feature/onboarding/model/user_profile_model.dart';
import 'package:app/feature/userprofile/model/user_model.dart';
import 'package:app/feature/userprofile/provider/user_profile_page_provider.dart';
import 'package:app/feature/userprofile/state/user_profile_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/github.dart';
import 'dart:convert';


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
    final githubService = _reader(githubServiceProvider);
    try {
      final userName =
          await githubService.userName().then((value) => value.login!);
      final userProfileContent = await githubService.getUserProfileFromGit();

      final Codec<String, String> stringToBase64 = utf8.fuse(base64);

      var file = userProfileContent!.file!.content!;
      var contents =
          stringToBase64.decode(file.replaceAll(RegExp("(\\n)"), ""));

      var userModel = UserProfileModel.fromJson(jsonDecode(contents));
      var userConfig = Config.fromJson(jsonDecode(userModel.config));

      state = UserProfileState.profileLoaded(
          UserModel(userName: userName, signature: userConfig.signature));
    } on AccessForbidden catch (e) {
      _reader(userProfilePageProvider.notifier).logout();
    }
  }
}
