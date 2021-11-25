import 'package:app/feature/userprofile/provider/user_profile_page_provider.dart';
import 'package:app/feature/userprofile/provider/user_profile_provider.dart';
import 'package:app/services/web3_service_provider.dart';
import 'package:app/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';

class UserProfilePage extends ConsumerWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userProfilePageProvider);

    return state.maybeWhen(
        userProfile: () => _userProfile(context, ref),
        onboarding: () => Container(),
        loading: () => Container(
              child: Text("Loading..."),
            ),
        loggedOut: () => Container(
              child: Text("Logged out"),
            ),
        orElse: () => Container());
  }

  Widget _userProfile(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userProfileProvider);

    return state.when(loading: () {
      return _widgetShimmer(context, ref);
    }, profileLoaded: (user) {
      return Scaffold(
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
                              "0x38ce12d4391a0c55e024b84b2f33bf12067d12d79a05480b840f092f0447fa5407f4f5911fa4e1bcc5f9787ce0f4ba6674f6ab9dda8a872ad05ed4047669bac41b");
                    },
                    child: Text("Get balance")),
              ],
            ),
            Row(children: [
              ElevatedButton(
                  onPressed: () {
                    ref.read(web3ServiceProvider).signData(user.userName,
                        "***REMOVED***");
                  },
                  child: Text("Get signed data")),
            ]),
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
    return Container();
  }
}
