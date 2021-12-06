import 'package:app/feature/onboarding/provider/user_profile_factory_service.dart';
import 'package:app/feature/onboarding/state/profile_creation_state.dart';
import 'package:app/feature/onboarding/widget/onboarding_page.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:app/services/web3_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dart:convert';

final profileCreationProvider =
    AutoDisposeStateNotifierProvider<ProfileCreationProvider, ProfileCreationState>((ref) {
  var userMnemonic = ref.watch(mnemonicProvider).value.text;
  return ProfileCreationProvider(ref.read, userMnemonic);
});

class ProfileCreationProvider extends StateNotifier<ProfileCreationState> {
  ProfileCreationProvider(this._reader, this._userMnemonic)
      : super(ProfileCreationState.loading(_userMnemonic)) {
    _init();
  }

  final Reader _reader;
  final String? _userMnemonic;
  late final GithubService githubService;
  late final Web3Service web3;
  late final UserProfileFactory userProfileFactoryService;
  final JsonEncoder beautifiedEncoder = const JsonEncoder.withIndent('  ');

  Future<void> _init() async {
    githubService = _reader(githubServiceProvider);
    web3 = _reader(web3ServiceProvider);
    userProfileFactoryService = _reader(userProfileFactoryProvider);

    var fork = await _createSAFork();
    var ethAccount = await _createOrUpdateUserProfile();
    // var pr = await _createPullRequest();

    if (ethAccount == null) {
      state = const ProfileCreationState.finalizedWithoutNewProfile();
    } else {
      state = ProfileCreationState.finalized(ethAccount);
    }
  }

  Future<void> _createSAFork() async {
    final githubService = _reader(githubServiceProvider);
    // Let's try to create the fork if it doesn't exist
    var saFork = await githubService.getSAFork();
    saFork ??= await githubService.createSAFork();
  }

  Future<void> _createPullRequest() async {
    final githubService = _reader(githubServiceProvider);
    var pr = await githubService.createPullRequestFromUserFork();
  }

  // This function will create or update an existing user profile with missing info mobile app
  // and/or social persona
  Future<ETHAccount?> _createOrUpdateUserProfile() async {
    var userName = await githubService.userName();

    // Let's create the userProfileFile if it doesn't exist
    var userProfileFile = await githubService.getUserProfileFromGit();
    if (userProfileFile == null) {
      var result = await userProfileFactoryService.createNewProfile(userName.login!, "");
      var profileJson = result.userProfileModel.toJson();
      var createdProfile = await githubService
          .addUserProfileToSAFork(beautifiedEncoder.convert(profileJson));
      return result.ethAccount;
    } else {
      // if it exists, it means that only the fork was missing, so no need to create anything new
      return Future.value(null);
    }
  }
}
