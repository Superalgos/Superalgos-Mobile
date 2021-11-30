import 'package:app/feature/onboarding/model/config_model.dart';
import 'package:app/feature/onboarding/model/user_profile_model.dart';
import 'package:app/feature/onboarding/state/profile_creation_state.dart';
import 'package:app/feature/onboarding/widget/onboarding_page.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:app/services/signature.dart';
import 'package:app/services/web3_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';

final profileCreationProvider =
    StateNotifierProvider<ProfileCreationProvider, ProfileCreationState>((ref) {
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
  final JsonEncoder beautifiedEncoder = const JsonEncoder.withIndent('  ');

  Future<void> _init() async {
    var fork = await _createSAFork();
    var ethAccount = await _createUserProfile();
    var pr = await _createPullRequest();

    state = ProfileCreationState.finalized(ethAccount);
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

  // This function will create the user profile
  Future<ETHAccount> _createUserProfile() async {
    final githubService = _reader(githubServiceProvider);
    final web3 = _reader(web3ServiceProvider);

    var userName = await githubService.userName();
    ETHAccount ethAcc = await web3.createAccount();
    Signature signature =
        await web3.signData(userName.login!, ethAcc.privateKey);

    // Let's create the userProfileFile if it doesn't exist
    var userProfileFile = await githubService.getUserProfileFromGit();
    if (userProfileFile == null) {
      ETHAccount ethAcc;
      if (_userMnemonic != null && _userMnemonic!.isNotEmpty) {
        ethAcc = await web3.mnemonicToETHAccount(_userMnemonic!);
      } else {
        ethAcc = await web3.createAccount();
      }
      var userProfileJson =
          _createDefaultModel(userName.login!, ethAcc, signature).toJson();
      var createdProfile = await githubService
          .addUserProfileToSAFork(beautifiedEncoder.convert(userProfileJson));
    }
    return ethAcc;
  }

  UserProfileModel _createDefaultModel(
      String userName, ETHAccount ethAccount, Signature signature) {
    var position = const Position(x: 14130, y: 6880.00000000000);

    var targetPosition = const Position(x: 14070, y: 6805.00000000000);

    var floatingObject = const FloatingObject(
        isPinned: false,
        isFrozen: false,
        isCollapsed: false,
        angleToParent: 1,
        distanceToParent: 3,
        arrangementStyle: 0);

    var uiObject = const UiObject(isRunning: false);

    var userProfileSavedPayload = SavedPayload(
        position: position,
        targetPosition: targetPosition,
        floatingObject: floatingObject,
        uiObject: uiObject);

    var userProfile = UserProfileModel(
        id: _generateUniqueId(),
        name: userName,
        type: "User Profile",
        config: _createConfigModel(userName, signature),
        project: "Governance",
        tokenPowerSwitch: _createDefaultTokenPowerSwitch(),
        tokensMined: _createDefaultTokensMined(),
        savedPayload: userProfileSavedPayload);

    return userProfile;
  }

  TokenPowerSwitch _createDefaultTokenPowerSwitch() {
    var position = const Position(x: 14100.000000000002, y: 6800.00000000000);

    var targetPosition = const Position(x: 14130, y: 6880.00000000000);

    var floatingObject = const FloatingObject(
        isPinned: false,
        isFrozen: false,
        isCollapsed: false,
        angleToParent: 1,
        distanceToParent: 3,
        arrangementStyle: 0);

    var uiObject = const UiObject(isRunning: false);

    var savedPayload = SavedPayload(
        position: position,
        targetPosition: targetPosition,
        floatingObject: floatingObject,
        uiObject: uiObject);

    var tokenPowerSwitch = TokenPowerSwitch(
        config: "{}",
        project: "Governance",
        tokenPowerSwitch: List.empty(),
        id: _generateUniqueId(),
        type: "Token Power Switch",
        name: "New Token Power Switch",
        savedPayload: savedPayload);

    return tokenPowerSwitch;
  }

  String _createConfigModel(String userName, Signature signature) {
    var cfg = Config(signature: signature, codeName: userName);

    return jsonEncode(cfg);
  }

  String _generateUniqueId() {
    var uuid = const Uuid();
    return uuid.v4();
  }

  TokensMined _createDefaultTokensMined() {
    var position = const Position(x: 14170.000000000000, y: 6715.00000000000);

    var targetPosition =
        const Position(x: 14110.000000000000, y: 6775.00000000000);

    var floatingObject = const FloatingObject(
        isPinned: false,
        isFrozen: false,
        isCollapsed: false,
        angleToParent: 1,
        distanceToParent: 3,
        arrangementStyle: 0);

    var uiObject = const UiObject(isRunning: false);

    var savedPayload = SavedPayload(
        position: position,
        targetPosition: targetPosition,
        floatingObject: floatingObject,
        uiObject: uiObject);

    var tokenPowerSwitch = TokensMined(
        project: "Governance",
        id: _generateUniqueId(),
        type: "Tokens Mined",
        name: "New Tokens Mined",
        savedPayload: savedPayload);

    return tokenPowerSwitch;
  }
}
