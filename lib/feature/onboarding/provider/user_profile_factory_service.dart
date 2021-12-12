import 'dart:convert';
import 'dart:math';
import 'package:app/feature/auth/repository/base_storage.dart';
import 'package:app/feature/onboarding/model/config_model.dart';
import 'package:app/feature/onboarding/model/secrets_model.dart';
import 'package:app/services/signature.dart';
import 'package:app/utils/merge_map.dart';
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


    var newUserProfile = UserProfileModel.newInstance(
        _newUniqueId(),
        userName,
        TokenPowerSwitch.defaultInstance(_newUniqueId()),
        TokensMined.defaultInstance(_newUniqueId()),
        config: jsonEncode(config));

    _createOrUpdateSocialPersonas(newUserProfile, socialHandle);
    _createOrUpdateUserApps(newUserProfile);

    await _signUnsignedEntitiesAndUpdateConfig(newUserProfile);

    return ProfileCreationResult(newUserProfile, ethAcc);
  }

  Future<void> addSocialPersonaToUserProfile(UserProfileModel userProfileModel, String socialHandle) async {

    _createOrUpdateSocialPersonas(userProfileModel, socialHandle);
    await _signUnsignedEntitiesAndUpdateConfig(userProfileModel);

  }

  Future<void> addMobileAppToUserProfile(UserProfileModel userProfileModel) async {

    _createOrUpdateUserApps(userProfileModel);
    await _signUnsignedEntitiesAndUpdateConfig(userProfileModel);

  }

  _createOrUpdateSocialPersonas(UserProfileModel userProfileModel, String socialHandle) {
    SocialPersona socialPersona = _createSocialPersona(socialHandle);

    if(userProfileModel.socialPersonas == null) {
      userProfileModel.socialPersonas = SocialPersonas.newInstance(
          _newUniqueId(), SavedPayload.defaultInstance(), [socialPersona]);
    } else {

      userProfileModel.socialPersonas!.socialPersonas != null
          ? userProfileModel.socialPersonas!.socialPersonas!.add(socialPersona)
          : userProfileModel.socialPersonas!.socialPersonas = [socialPersona];

    }


  }

  SocialPersona _createSocialPersona(String socialHandle) {
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
    return socialPersona;
  }

  _createOrUpdateUserApps(UserProfileModel userProfileModel) {

    if(userProfileModel.userApps == null) {
      SocialTradingMobileApp socialTradingMobileApp = _createSocialTradingMobileApp();

      final mobileApps = MobileApps.newInstance(SavedPayload.defaultInstance(),
          _newUniqueId(), "{}", [socialTradingMobileApp]);

      userProfileModel.userApps =  UserApps.newInstance(
          SavedPayload.defaultInstance(), _newUniqueId(), mobileApps);
    } else {

      // if there are no mobile apps declared let's create everything
      if(userProfileModel.userApps!.mobileApps != null) {
        SocialTradingMobileApp socialTradingMobileApp = _createSocialTradingMobileApp();

        final mobileApps = MobileApps.newInstance(SavedPayload.defaultInstance(),
            _newUniqueId(), "{}", [socialTradingMobileApp]);
        userProfileModel.userApps!.mobileApps = mobileApps;

        // there are already some mobile apps declared, so let's just add the new mobile app
      } else {
        SocialTradingMobileApp socialTradingMobileApp = _createSocialTradingMobileApp();

        var mobileApps = userProfileModel.userApps!.mobileApps!;

        // add to existing mobile app list or create a new list with the new mobile app

        mobileApps.socialTradingMobileApps != null
            ? mobileApps.socialTradingMobileApps!.add(socialTradingMobileApp)
            : mobileApps.socialTradingMobileApps = [socialTradingMobileApp];

      }
    }


  }

  SocialTradingMobileApp _createSocialTradingMobileApp() {
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
    return socialTradingMobileApp;
  }

  Future<void> _signUnsignedEntitiesAndUpdateConfig(
      UserProfileModel userProfileModel) async {

    if (userProfileModel.userApps != null) {
      if (userProfileModel.userApps!.mobileApps != null) {
        if (userProfileModel.userApps!.mobileApps!.socialTradingMobileApps != null) {
          var socialTradingMobileApps =
          userProfileModel.userApps!.mobileApps!.socialTradingMobileApps!;

          for (int i = 0; i < socialTradingMobileApps.length; i++) {
            var mobileApp = socialTradingMobileApps[i];
            mobileApp.signingAccount ??=
                await _createSigningAccount(userProfileModel, mobileApp);
          }
        }
      }
    }

    if (userProfileModel.socialPersonas != null) {
      if (userProfileModel.socialPersonas!.socialPersonas != null) {
        var socialPersonas = userProfileModel.socialPersonas!.socialPersonas!;
        for (int i = 0; i < socialPersonas.length; i++) {
          var socialPersona = socialPersonas[i];
          socialPersona.signingAccount ??=
              await _createSigningAccount(userProfileModel, socialPersona);
        }
      }
    }

  }

  Future<SigningAccount>? _createSigningAccount(
      GenericUIObject userProfile, GenericUIObject parent) async {
    ETHAccount ethAcc = await web3.createAccount();
    Signature signature =
        await web3.signData(userProfile.name, ethAcc.privateKey);

    SharedConfig parentConfig = SharedConfig.fromJson(jsonDecode(parent.config));

    final signingConfig =
        SigningConfig(signature: signature, codeName: parentConfig.codeName)
            .toJson();

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
    var existingSecrets = await storage.read("secrets");

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

    // Add to existing secrets if we already have something in storage
    // Otherwise create a new object in the storage
    if(existingSecrets != null) {
      var existingSecretsObj = Secrets.fromJson(jsonDecode(existingSecrets));
      existingSecretsObj.secrets.add(secret);
      await storage.write("secrets", jsonEncode(existingSecretsObj));
    } else {
      final secrets = Secrets(secrets: [secret]).toJson();
      await storage.write("secrets", jsonEncode(secrets));
    }


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
    Secrets storedSecretObj = Secrets.fromJson(jsonDecode(storedSecrets));
    var userHasExistingSocialPersona = false;

    final existingSocialPersonas = userProfileModel.socialPersonas!.socialPersonas!;
    for(int i = 0; i < existingSocialPersonas.length; i++) {
      final existingSocialPersona = existingSocialPersonas[i];

      if (existingSocialPersona.signingAccount != null) {

        final socialMobileAppConfig = SocialMobileAppConfig.fromJson(jsonDecode(existingSocialPersona.config));
        final signingConfig = SigningConfig.fromJson(jsonDecode(existingSocialPersona.signingAccount!.config));
        final blockChainAccount = await web3.getAccountFromSignature(
            userProfileModel.name, signingConfig.signature.signature);

        final generatedSecretForComparison = Secret(
            nodeId: existingSocialPersona.id,
            nodeCodeName: socialMobileAppConfig.codeName,
            nodeName: existingSocialPersona.name,
            nodeType: existingSocialPersona.type,
            // won't be used for comparison in the equals implementation of Secret obj
            privateKey: "",
            blockchainAccount: blockChainAccount,
            signingAccountNodeId: existingSocialPersona.signingAccount!.id,
            userProfileHandle: userProfileModel.name,
            userProfileId: userProfileModel.id);

        if (storedSecretObj.secrets.contains(generatedSecretForComparison)){
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
    Secrets storedSecretObj = Secrets.fromJson(jsonDecode(storedSecrets));
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

        if (storedSecretObj.secrets.contains(generatedSecretForComparison)){
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

