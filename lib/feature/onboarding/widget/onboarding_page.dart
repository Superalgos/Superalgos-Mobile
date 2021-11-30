
import 'package:app/feature/onboarding/provider/onboarding_provider.dart';
import 'package:app/feature/onboarding/provider/profile_creation_provider.dart';
import 'package:app/utils/constants.dart';
import 'package:app/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:loading_indicator/loading_indicator.dart';

import 'profile_creation_page.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(onboardingProvider);
    var onbProvider = ref.read(onboardingProvider.notifier);

    return state.maybeWhen(slideShowFinalized: () {
      return const ProfileCreationPage();
    }, orElse: () {
      return _onboardingScreen(context, ref, onbProvider);
    });
  }

  Widget _onboardingScreen(context, ref, OnboardingProvider onbProvider) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Create your Superalgos profile",
          bodyWidget: const Text(
            "It seems that it is the first time you are interacting with Superalgos, in order to continue we need to create a new profile for you. Please follow the steps",
            style: TextStyles.onbLargeTextStyle,
            textAlign: TextAlign.justify,
          ),
          image: const Center(
              child: Image(
                  image: AssetImage('assets/onboarding.png'), height: 175.0)),
          useScrollView: true,
        ),
        PageViewModel(
          title: "Create Superalgos Fork",
          bodyWidget: const Text(
            "First we will create a forked repository for Superalgos under your github account.",
            style: TextStyles.onbLargeTextStyle,
            textAlign: TextAlign.justify,
          ),
          image: const Center(
              child: Image(
                  image: AssetImage('assets/onboarding_2.png'), height: 175.0)),
          useScrollView: true,
        ),
        PageViewModel(
          title: "... Now let's tallk about your user profile",
          bodyWidget: const Text(
            "For the onboarding to be fully complete, we need to build an user profile. If you already own a BSC wallet please provide the mnemonic, otherwise we will create a new one for you",
            style: TextStyles.onbLargeTextStyle,
            textAlign: TextAlign.justify,
          ),
          footer: const MnemonicCaptureWidget(),
          image: const Center(
              child: Image(
                  image: AssetImage('assets/onboarding_3.png'), height: 175.0)),
          useScrollView: true,
        ),
      ],
      scrollController: ScrollController(),
      isTopSafeArea: true,
      globalBackgroundColor: Colors.white,
      isProgress: false,
      showDoneButton: true,
      showNextButton: true,
      showSkipButton: false,
      nextColor: Palette.saBlue.shade100,
      next: Text("Next step"),
      onChange: (page) {
        onbProvider.navigate(page);
      },
      onDone: () {
        onbProvider.finalize();
      },
      done: const Text("Create profile",
          style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}

final mnemonicProvider =
StateProvider<TextEditingController>((ref) => TextEditingController());

class MnemonicCaptureWidget extends ConsumerWidget {
  const MnemonicCaptureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var ctrl = ref.read(mnemonicProvider);
    return TextField(
      controller: ctrl,
      decoration: const InputDecoration(
          labelText: "Enter your mnemonic: ",
      ),
      autocorrect: false,
    );
  }
}
