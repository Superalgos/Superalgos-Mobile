import 'package:app/feature/auth/repository/base_storage.dart';
import 'package:app/feature/onboarding/model/config_model.dart';
import 'package:app/feature/onboarding/model/secrets_model.dart';
import 'package:app/feature/onboarding/model/user_profile_model.dart';
import 'package:app/feature/onboarding/provider/user_profile_factory_service.dart';
import 'package:app/feature/onboarding/state/profile_creation_state.dart';
import 'package:app/feature/onboarding/widget/onboarding_page.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:app/services/web3_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';
import 'package:app/feature/auth/repository/storage.dart'
// ignore: uri_does_not_exist
    if (dart.library.io) 'package:app/feature/auth/repository/secure_storage.dart';

final profileCreationProvider = AutoDisposeStateNotifierProvider<ProfileCreationProvider, ProfileCreationState>((ref) {
  var userMnemonic = ref.watch(mnemonicProvider).value.text;
  var socialHandle = ref.watch(socialHandleProvider).value.text;
  return ProfileCreationProvider(ref.read, userMnemonic, socialHandle);
});

class ProfileCreationProvider extends StateNotifier<ProfileCreationState> {
  ProfileCreationProvider(this._reader, this._userMnemonic, this._socialHandle)
      : super(ProfileCreationState.loading(_userMnemonic)) {
    _init();
  }

  final Reader _reader;
  final String? _userMnemonic;
  final String? _socialHandle;
  late final GithubService githubService;
  late final Web3Service web3;
  late final UserProfileFactory userProfileFactoryService;
  final JsonEncoder beautifiedEncoder = const JsonEncoder.withIndent('  ');
  final BaseStorage storage = createStorage();

  Future<void> _init() async {
    githubService = _reader(githubServiceProvider);
    web3 = _reader(web3ServiceProvider);
    userProfileFactoryService = _reader(userProfileFactoryProvider);

    var fork = await _createSAFork();
    var ethAccount = await createOrUpdateUserProfile();
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
  Future<ETHAccount?> createOrUpdateUserProfile() async {
    var userName = await githubService.userName();

    // Let's create the userProfileFile if it doesn't exist
    // If it exists let's create new persona and new mobile app if not found in secrets
    var userProfileFile = await githubService.getUserProfileFromGit();
    if (userProfileFile == null) {
      var result = await userProfileFactoryService.createNewProfile(userName.login!, _socialHandle!,
          userMnemonic: _userMnemonic);

      var profileJson = result.userProfileModel.toJson();
      var createdProfile = await githubService.addUserProfileToSAFork(beautifiedEncoder.convert(profileJson));
      return result.ethAccount;
    } else {
      final Codec<String, String> stringToBase64 = utf8.fuse(base64);

      final fileContent = userProfileFile.file!.content!;
      final userProfileRawContent = stringToBase64.decode(fileContent.replaceAll(RegExp("(\\n)"), ""));

      var userProfileModel = UserProfileModel.fromJson(jsonDecode(userProfileRawContent));
      UserProfileModel? updatedProfileModel;

      if (!await userProfileFactoryService.userProfileHasUserAppForCurrentInstallation(userProfileModel)) {
        updatedProfileModel = await userProfileFactoryService.addMobileAppToUserProfile(userProfileModel);
      }

      if (!await userProfileFactoryService
          .userProfileHasSocialPersonaForCurrentInstallation(updatedProfileModel ?? userProfileModel)) {
        updatedProfileModel = await userProfileFactoryService.addSocialPersonaToUserProfile(
            updatedProfileModel ?? userProfileModel, _socialHandle!);
      }

      // if we managed to update the profile, let's commit it
      if (updatedProfileModel != null) {
        // merge the two profiles to preserve integrity
        var updatedProfileMap = updatedProfileModel.toJson();
        var existingProfileMap = jsonDecode(userProfileRawContent);

        final newProfileMap = {...updatedProfileMap, ...existingProfileMap};

        await githubService.addUserProfileToSAFork(beautifiedEncoder.convert(newProfileMap));

        return ETHAccount("privateKey", "");
      }

      return Future.value(null);
    }
  }
}
