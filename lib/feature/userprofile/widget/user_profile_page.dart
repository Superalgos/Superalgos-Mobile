import 'package:app/feature/userprofile/provider/user_profile_page_provider.dart';
import 'package:app/feature/userprofile/provider/user_profile_provider.dart';
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
        onboarding: () => _onboarding(context, ref),
        loading: () => Container(
              child: Text("Loading..."),
            ),
        loggedOut: () => Container(
              child: Text("Logged out"),
            ),
        orElse: () => Container());
  }

  Widget _onboarding(BuildContext context, WidgetRef ref) {
    return Container(
        child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Create your Superalgos profile",
          body:
              "It seems that it is the first time you are interacting with Superalgos, in order to continue we need to create a new user profile for you",
          image: const Center(
              child: Image(
                  image: AssetImage('assets/onboarding.png'), height: 175.0)),
        ),
      ],
      isProgress: false,
      showDoneButton: true,
      showNextButton: false,
      showSkipButton: false,
      onDone: () {
        ref.read(userProfilePageProvider.notifier).createUserProfile();
      },
      done: const Text("Create profile",
          style: TextStyle(fontWeight: FontWeight.w600)),
    ));
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
                ElevatedButton(
                    onPressed: () {
                      ref.read(userProfileProvider.notifier).getWalletBalance();
                    },
                    child: Text("Get balance")),
                ElevatedButton(
                    onPressed: () {
                      ref.read(userProfilePageProvider.notifier).logout();
                    },
                    child: Text("Logout")),
              ],
            ),
          ]));
    });
  }

  Widget _widgetShimmer(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
