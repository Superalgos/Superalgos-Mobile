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

  Future<ProfileCreationResult> createNewProfile(String userName, String socialHandle,
      {String? userMnemonic}) async {
    ETHAccount ethAcc;
    if (userMnemonic != null && userMnemonic.isNotEmpty) {
      ethAcc = await web3.mnemonicToETHAccount(userMnemonic);
    } else {
      ethAcc = await web3.createAccount();
    }

    Signature signature = await web3.signData(userName, ethAcc.privateKey);

    final config = SigningConfig(signature: signature, codeName: userName).toJson();
    final socialPersonas = _createSocialPersona(socialHandle);

    var newUserProfile = UserProfileModel.newInstance(
        _newUniqueId(),
        userName,
        TokenPowerSwitch.defaultInstance(_newUniqueId()),
        TokensMined.defaultInstance(_newUniqueId()),
        config: jsonEncode(config),
        socialPersonas: socialPersonas);

    final userProfileModel = await _signUnsignedEntitiesAndUpdateConfig(newUserProfile);

    return ProfileCreationResult(userProfileModel, ethAcc);
  }

  SocialPersonas _createSocialPersona(String socialHandle) {
    var randomGenerated =
        generateWordPairs(maxSyllables: 2, random: Random.secure()).take(1).first.asPascalCase;

    final socialPersonaCodeName = "Social-Persona-$randomGenerated";

    final socialPersonaConfig =
        SocialPersonaConfig(bio: "", socialHandle: socialHandle, codeName: socialPersonaCodeName);

    final socialPersona = SocialPersona.toUnsignedSocialPersona(
        SavedPayload.defaultInstance(), _newUniqueId(), jsonEncode(socialPersonaConfig.toJson()));

    return SocialPersonas.newInstance(
        _newUniqueId(), SavedPayload.defaultInstance(), [socialPersona]);
  }

  Future<UserProfileModel> _signUnsignedEntitiesAndUpdateConfig(
      UserProfileModel userProfileModel) async {
    var userProfile = userProfileModel;
    // Generate signing accounts for Social Personas
    for (int i = 0; i < userProfile.socialPersonas!.socialPersonas.length; i++) {
      var socialPersona = userProfile.socialPersonas!.socialPersonas[i];

      if (socialPersona.signingAccount == null) {
        ETHAccount ethAcc = await web3.createAccount();
        Signature signature = await web3.signData(userProfile.name, ethAcc.privateKey);

        SocialPersonaConfig socialPersonaConfig =
            SocialPersonaConfig.fromJson(jsonDecode(socialPersona.config));

        final config =
            SigningConfig(signature: signature, codeName: socialPersonaConfig.codeName).toJson();

        final signingAccount = SigningAccount.defaultInstance(
            SavedPayload.defaultInstance(), _newUniqueId(), jsonEncode(config));

        // add newly created signing account
        socialPersona.signingAccount = signingAccount;

        final secret = Secret(
            nodeId: socialPersona.id,
            nodeCodeName: socialPersonaConfig.codeName,
            nodeName: socialPersona.name,
            nodeType: socialPersona.type,
            privateKey: ethAcc.privateKey,
            blockchainAccount: ethAcc.address,
            signingAccountNodeId: signingAccount.id,
            userProfileHandle: userProfile.name,
            userProfileId: userProfile.id);

        final secrets = Secrets(secrets: [secret]).toJson();
        var existingSecrets = await storage.read("secrets");

        final mergedSecrets = {
          ...jsonDecode(existingSecrets ?? "{}"),
          ...secrets,
        };
        var savedSecrets = await storage.write("secrets", jsonEncode(mergedSecrets));
      }
    }
    return userProfile;
  }

  String _newUniqueId() {
    return uuid.v4();
  }
}

class ProfileCreationResult {
  final UserProfileModel userProfileModel;
  final ETHAccount ethAccount;

  ProfileCreationResult(this.userProfileModel, this.ethAccount);
}
