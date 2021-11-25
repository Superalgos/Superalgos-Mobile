import 'package:app/feature/userprofile/provider/onboarding_provider.dart';
import 'package:app/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends ConsumerWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(onboardingProvider);
    var onbProvider = ref.read(onboardingProvider.notifier);

    var currentPage = state.maybeWhen(present: (page) {
      return page;
    }, createFork: (page) {
      return page;
    }, createProfile: (page) {
      return page;
    }, orElse: () {
      return 1;
    });

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Create your Superalgos profile",
          body:
              "It seems that it is the first time you are interacting with Superalgos, in order to continue we need to create a new profile for you. Please follow the steps",
          image: const Center(
              child: Image(
                  image: AssetImage('assets/onboarding.png'), height: 175.0)),
        ),
        PageViewModel(
          title: "Create Superalgos Fork",
          body:
              "First we will create a forked repository for Superalgos under your own account.",
          image: const Center(
              child: Image(
                  image: AssetImage('assets/onboarding_2.png'), height: 175.0)),
        ),
        PageViewModel(
          title: "Create user profile",
          body:
              "Now that the fork has been created, we will create an user profile and wallet.",
          image: const Center(
              child: Image(
                  image: AssetImage('assets/onboarding_3.png'), height: 175.0)),
        ),
      ],
      isProgress: false,
      showDoneButton: true,
      showNextButton: true,
      showSkipButton: false,
      nextColor: Palette.saBlue.shade100,
      initialPage: currentPage,
      next: Text("Next step"),
      onChange: (page) {
        state.maybeWhen(
            present: (page) {},
            createFork: (page) {
              return page;
            },
            createProfile: (page) {
              return page;
            },
            orElse: () {});
      },
      onDone: () {
        // Change state to user profile
      },
      done: const Text("Go to profile",
          style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}
