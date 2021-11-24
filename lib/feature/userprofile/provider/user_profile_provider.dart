import 'package:http/http.dart';

import 'package:app/feature/auth/repository/auth_repository.dart';
import 'package:app/feature/userprofile/model/user_model.dart';
import 'package:app/feature/userprofile/state/user_profile_state.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';

import 'package:web3dart/credentials.dart';
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

  Future<void> getWalletBalance() async {
    final client = Web3Client("https://bsc-dataseed.binance.org", Client());

    final credentials = EthPrivateKey.fromHex('0x01480a1f95282f9cd8ecd58e16b722678a17738f633c1b0e4459c091c69c2e89');
    final address = credentials.address;

    print(address.hexEip55);
    var amount = await client.getBalance(address);
    print(amount.getInEther);
  }

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
        hasSAFork: saFork == null ? false : true,
        hasSAUserProfile: true, // TODO: check
        userProfileContent: contents,
        saFork: saFork));
  }
}
