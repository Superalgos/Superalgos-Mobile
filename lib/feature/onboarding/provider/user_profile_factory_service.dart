import 'dart:convert';
import 'dart:math';
import 'package:app/feature/auth/repository/base_storage.dart';
import 'package:app/feature/onboarding/model/config_model.dart';
import 'package:app/feature/onboarding/model/secrets_model.dart';
import 'package:app/services/signature.dart';
import 'package:english_words/english_words.dart';
import 'package:app/feature/onboarding/model/user_profile_model.dart';
import 'package:app/services/web3_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import 'package:app/feature/auth/repository/storage.dart'
// ignore: uri_does_not_exist
    if (dart.library.io) 'package:app/feature/auth/repository/secure_storage.dart';

final userProfileFactoryProvider =
    Provider<UserProfileFactory>((ref) => UserProfileFactory(ref.read));

class UserProfileFactory {
  UserProfileFactory(this._reader) : web3 = _reader(web3ServiceProvider);

  final Reader _reader;

  final Web3Service web3;

  final uuid = const Uuid();

  final BaseStorage storage = createStorage();

  Future<ProfileCreationResult> createNewProfile(
      String userName, String socialHandle,
      {String? userMnemonic}) async {
    ETHAccount ethAcc;
    if (userMnemonic != null && userMnemonic.isNotEmpty) {
      ethAcc = await web3.mnemonicToETHAccount(userMnemonic);
    } else {
      ethAcc = await web3.createAccount();
    }

    Signature signature = await web3.signData(userName, ethAcc.privateKey);

    final config =
        SigningConfig(signature: signature, codeName: userName).toJson();
    final socialPersonas = _createSocialPersona(socialHandle);
    final userApps = _createMobileApp();

    var newUserProfile = UserProfileModel.newInstance(
        _newUniqueId(),
        userName,
        TokenPowerSwitch.defaultInstance(_newUniqueId()),
        TokensMined.defaultInstance(_newUniqueId()),
        config: jsonEncode(config),
        socialPersonas: socialPersonas,
        userApps: userApps);

    final userProfileModel =
        await _signUnsignedEntitiesAndUpdateConfig(newUserProfile);

    return ProfileCreationResult(userProfileModel, ethAcc);
  }

  Future<UserProfileModel> addSocialPersonaToUserProfile(UserProfileModel userProfileModel, String socialHandle) async {

    //TODO: Use actual social handle
    userProfileModel.socialPersonas = _createSocialPersona(socialHandle);

    final updatedUserProfileModel =
        await _signUnsignedEntitiesAndUpdateConfig(userProfileModel);

    return updatedUserProfileModel;

  }

  Future<UserProfileModel> addMobileAppToUserProfile(UserProfileModel userProfileModel) async {

    userProfileModel.userApps = _createMobileApp();

    final updatedUserProfileModel =
    await _signUnsignedEntitiesAndUpdateConfig(userProfileModel);

    return updatedUserProfileModel;

  }

  SocialPersonas _createSocialPersona(String socialHandle) {
    var randomGenerated =
        generateWordPairs(maxSyllables: 2, random: Random.secure())
            .take(1)
            .first
            .asPascalCase;

    final socialPersonaCodeName = "Social-Persona-$randomGenerated";

    final socialPersonaConfig = SocialPersonaConfig(
            bio: "",
            socialHandle: socialHandle,
            codeName: socialPersonaCodeName)
        .toJson();

    final socialPersona = SocialPersona.toUnsignedSocialPersona(
        SavedPayload.defaultInstance(),
        _newUniqueId(),
        jsonEncode(socialPersonaConfig));

    return SocialPersonas.newInstance(
        _newUniqueId(), SavedPayload.defaultInstance(), [socialPersona]);
  }

  UserApps _createMobileApp() {
    var randomGenerated =
        generateWordPairs(maxSyllables: 2, random: Random.secure())
            .take(1)
            .first
            .asPascalCase;

    final socialTradingMobileAppCodeName =
        "Social-Trading-Mobile-App-$randomGenerated";

    final socialTradingMobileAppConfig = SocialMobileAppConfig(
            codeName: socialTradingMobileAppCodeName,
            host: "",
            webSocketsPort: "")
        .toJson();

    final socialTradingMobileApp =
        SocialTradingMobileApp.toUnsignedSocialTradingMobileApp(
            SavedPayload.defaultInstance(),
            _newUniqueId(),
            jsonEncode(socialTradingMobileAppConfig));

    final mobileApps = MobileApps.newInstance(SavedPayload.defaultInstance(),
        _newUniqueId(), "{}", [socialTradingMobileApp]);

    return UserApps.newInstance(
        SavedPayload.defaultInstance(), _newUniqueId(), mobileApps);
  }

  Future<UserProfileModel> _signUnsignedEntitiesAndUpdateConfig(
      UserProfileModel userProfileModel) async {
    var userProfile = userProfileModel;

    if (userProfile.userApps != null) {
      if (userProfile.userApps!.mobileApps != null) {
        if (userProfile.userApps!.mobileApps!.socialTradingMobileApps != null) {
          var socialTradingMobileApps =
              userProfile.userApps!.mobileApps!.socialTradingMobileApps!;

          for (int i = 0; i < socialTradingMobileApps.length; i++) {
            var mobileApp = socialTradingMobileApps[i];
            mobileApp.signingAccount ??=
                await _createSigningAccount(userProfile, mobileApp);
          }
        }
      }
    }

    if (userProfile.socialPersonas != null) {
      if (userProfile.socialPersonas!.socialPersonas != null) {
        var socialPersonas = userProfile.socialPersonas!.socialPersonas!;
        for (int i = 0; i < socialPersonas.length; i++) {
          var socialPersona = socialPersonas[i];
          socialPersona.signingAccount ??=
              await _createSigningAccount(userProfile, socialPersona);
        }
      }
    }

    return userProfile;
  }

  Future<SigningAccount>? _createSigningAccount(
      GenericUIObject userProfile, GenericUIObject parent) async {
    ETHAccount ethAcc = await web3.createAccount();
    Signature signature =
        await web3.signData(userProfile.name, ethAcc.privateKey);

    final signingConfig =
        SigningConfig(signature: signature, codeName: parent.name)
            .toJson();

    SharedConfig parentConfig =
        SharedConfig.fromJson(jsonDecode(parent.config));

    final signingAcc = SigningAccount.defaultInstance(
        SavedPayload.defaultInstance(),
        _newUniqueId(),
        jsonEncode(signingConfig));

    await _writeSecretsToStorage(
        parent, parentConfig.codeName, ethAcc, signingAcc, userProfile);

    return signingAcc;
  }

  Future<void> _writeSecretsToStorage(
      GenericUIObject signingAccParent,
      String signingAccParentCodeName,
      ETHAccount ethAccount,
      GenericUIObject signingAcc,
      GenericUIObject userProfile) async {
    final secret = Secret(
        nodeId: signingAccParent.id,
        nodeCodeName: signingAccParentCodeName,
        nodeName: signingAccParent.name,
        nodeType: signingAccParent.type,
        privateKey: ethAccount.privateKey,
        blockchainAccount: ethAccount.address,
        signingAccountNodeId: signingAcc.id,
        userProfileHandle: userProfile.name,
        userProfileId: userProfile.id);

    final secrets = Secrets(secrets: [secret]).toJson();
    var existingSecrets = await storage.read("secrets");

    final mergedSecrets = {
      ...jsonDecode(existingSecrets ?? "{}"),
      ...secrets,
    };

    await storage.write("secrets", jsonEncode(mergedSecrets));
  }

  String _newUniqueId() {
    return uuid.v4();
  }

  Future<bool> userProfileHasSocialPersonaForCurrentInstallation(
      UserProfileModel userProfileModel) async {

    if(userProfileModel.socialPersonas == null) {return false;}
    if(userProfileModel.socialPersonas!.socialPersonas == null) { return false;}
    if(userProfileModel.socialPersonas!.socialPersonas!.isEmpty) {return false;}

    final storedSecrets = await storage.read("secrets");

    if(storedSecrets == null) {return false;}

    // Check if one of the secrets matches Userprofile
    // we will check all fields in the equals implementation of Secrets object
    // BESIDES privateKey (this one can't be reproduced)
    Secrets secrets = Secrets.fromJson(jsonDecode(storedSecrets));
    var userHasExistingSocialPersona = false;

    final existingSocialPersonas = userProfileModel.userApps!.mobileApps!.socialTradingMobileApps!;
    for(int i = 0; i < existingSocialPersonas.length; i++) {
      final socialPersona = existingSocialPersonas[i];

      if (socialPersona.signingAccount != null) {

        final socialMobileAppConfig = SocialMobileAppConfig.fromJson(jsonDecode(socialPersona.config));
        final signingConfig = SigningConfig.fromJson(jsonDecode(socialPersona.signingAccount!.config));
        final blockChainAccount = await web3.getAccountFromSignature(
            userProfileModel.name, signingConfig.signature.signature);

        final generatedSecretForComparison = Secret(
            nodeId: socialPersona.id,
            nodeCodeName: socialMobileAppConfig.codeName,
            nodeName: socialPersona.name,
            nodeType: socialPersona.type,
            // won't be used for comparison in the equals implementation of Secret obj
            privateKey: "",
            blockchainAccount: blockChainAccount,
            signingAccountNodeId: socialPersona.signingAccount!.id,
            userProfileHandle: userProfileModel.name,
            userProfileId: userProfileModel.id);

        if (secrets.secrets.contains(generatedSecretForComparison)){
          userHasExistingSocialPersona = true;
        }
      }
    }

    return userHasExistingSocialPersona;

  }

  Future<bool> userProfileHasUserAppForCurrentInstallation(
      UserProfileModel userProfileModel) async {

    if(userProfileModel.userApps == null) {return false;}
    if(userProfileModel.userApps!.mobileApps == null) { return false;}
    if(userProfileModel.userApps!.mobileApps!.socialTradingMobileApps == null) {return false;}
    if(userProfileModel.userApps!.mobileApps!.socialTradingMobileApps!.isEmpty) {return false;}

    final storedSecrets = await storage.read("secrets");

    if(storedSecrets == null) {return false;}

    // Check if one of the secrets matches Userprofile
    // we will check all fields in the equals implementation of Secrets object
    // BESIDES privateKey (this one can't be reproduced)
    Secrets secrets = Secrets.fromJson(jsonDecode(storedSecrets));
    var userHasValidApp = false;

    final existingMobileApps = userProfileModel.userApps!.mobileApps!.socialTradingMobileApps!;
    for(int i = 0; i < existingMobileApps.length; i++) {
      final app = existingMobileApps[i];

      if (app.signingAccount != null) {

        final socialMobileAppConfig = SocialMobileAppConfig.fromJson(jsonDecode(app.config));
        final signingConfig = SigningConfig.fromJson(jsonDecode(app.signingAccount!.config));
        final blockChainAccount = await web3.getAccountFromSignature(
            userProfileModel.name, signingConfig.signature.signature);

        final generatedSecretForComparison = Secret(
            nodeId: app.id,
            nodeCodeName: socialMobileAppConfig.codeName,
            nodeName: app.name,
            nodeType: app.type,
            // won't be used for comparison in the equals implementation of Secret obj
            privateKey: "",
            blockchainAccount: blockChainAccount,
            signingAccountNodeId: app.signingAccount!.id,
            userProfileHandle: userProfileModel.name,
            userProfileId: userProfileModel.id);

        if (secrets.secrets.contains(generatedSecretForComparison)){
          userHasValidApp = true;
        }
      }
    }

    return userHasValidApp;

  }
}

class ProfileCreationResult {
  final UserProfileModel userProfileModel;
  final ETHAccount ethAccount;

  ProfileCreationResult(this.userProfileModel, this.ethAccount);
}

