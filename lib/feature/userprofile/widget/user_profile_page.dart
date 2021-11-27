import 'package:app/feature/userprofile/provider/user_profile_page_provider.dart';
import 'package:app/feature/userprofile/provider/user_profile_provider.dart';
import 'package:app/services/web3_service_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserProfilePage extends ConsumerWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userProfilePageProvider);

    return _userProfile(context, ref);
  }

  Widget _userProfile(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userProfileProvider);

    return state.when(loading: () {
      return _widgetShimmer(context, ref);
    }, profileLoaded: (user) {
      return Scaffold(
          key: UniqueKey(),
          appBar: AppBar(
            title: Text("User Profile"),
          ),
          body: Column(children: [
            Row(
              children: [
                Text(user.userName),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      ref
                          .read(web3ServiceProvider)
                          .getWalletBalanceForUserAndSignature(user.userName,
                              "0x88308dece27d9565ae7c6daf91f8b6aa88893a9f2145d35f4adf872894d7306b74b5bc0a2a981551dbd7158fcb48d2f6d00e8583e6dbb6ad4784fe80990f1afd1c");
                    },
                    child: Text("Get balance")),
              ],
            ),
            Row(children: [
              ElevatedButton(
                  onPressed: () {
                    ref.read(web3ServiceProvider).signData(user.userName,
                        "0x8a50d0f12ccdfd0725479e0727227f79e79b8c08f6a8d07bf6a339cb565de2d0");
                  },
                  child: Text("Get signed data")),
            ]),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      ref.read(web3ServiceProvider).createAccount();
                    },
                    child: Text("Gen addr")),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      ref.read(web3ServiceProvider).mnemonicToAddr("");
                    },
                    child: Text("Addr from mnemonic")),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      ref.read(userProfilePageProvider.notifier).logout();
                    },
                    child: Text("Logout")),
              ],
            )
          ]));
    });
  }

  Widget _widgetShimmer(BuildContext context, WidgetRef ref) {
    return Container(child: const Text("Loading user profile"),);
  }
}
