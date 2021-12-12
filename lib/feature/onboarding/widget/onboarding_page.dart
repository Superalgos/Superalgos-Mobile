import 'package:app/feature/onboarding/provider/onboarding_provider.dart';
import 'package:app/feature/onboarding/provider/profile_creation_provider.dart';
import 'package:app/feature/onboarding/state/onboarding_state.dart';
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
    OnboardingState state = ref.watch(onboardingProvider);
    var onbProvider = ref.read(onboardingProvider.notifier);
    var socialHandleCtrlProvider = ref.watch(socialHandleProvider);

    return state.when(slideShowFinalized: () {
      return const ProfileCreationPage();
    }, updateProfile: () {
      return _updateProfile(context, ref, onbProvider, socialHandleCtrlProvider);
    }, newProfile: () {
      return _createProfile(context, ref, onbProvider);
    });
  }

  Widget _createProfile(context, ref, OnboardingProvider onbProvider) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Create your Superalgos profile",
          bodyWidget: const Text(
            "It seems that it is the first time you are interacting with Superalgos Mobile, in order to continue we need to create a new profile for you. Please follow the steps",
            style: TextStyles.onbLargeTextStyle,
            textAlign: TextAlign.justify,
          ),
          image: const Center(child: Image(image: AssetImage('assets/onboarding.png'), height: 175.0)),
          useScrollView: true,
        ),
        PageViewModel(
          title: "Create Superalgos Fork",
          bodyWidget: const Text(
            "We will create a forked repository for Superalgos under your github account, if we can't find it there already",
            style: TextStyles.onbLargeTextStyle,
            textAlign: TextAlign.justify,
          ),
          image: const Center(child: Image(image: AssetImage('assets/onboarding_2.png'), height: 175.0)),
          useScrollView: true,
        ),
        PageViewModel(
          title: "... Now let's talk about your user profile",
          bodyWidget: const Text(
            "For the onboarding to be fully complete, we need to build an user profile. If you already own a BSC wallet please provide the mnemonic, otherwise we will create a new one for you",
            style: TextStyles.onbLargeTextStyle,
            textAlign: TextAlign.justify,
          ),
          footer: const MnemonicCaptureWidget(),
          image: const Center(child: Image(image: AssetImage('assets/onboarding_3.png'), height: 175.0)),
          useScrollView: true,
        ),
        PageViewModel(
          title: "One last thing",
          bodyWidget: const Text(
            "What nickname would you like to use within the Superalgos Social Network ?",
            style: TextStyles.onbLargeTextStyle,
            textAlign: TextAlign.justify,
          ),
          footer: SocialHandleCaptureWidget(),
          image: const Center(child: Image(image: AssetImage('assets/onboarding_4.png'), height: 175.0)),
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
      done: const Text("Create profile", style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }

  Widget _updateProfile(context, ref, OnboardingProvider onbProvider, String socialHandleText) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Almost there...",
          bodyWidget: const Text(
            "What nickname would you like to use within the Superalgos Social Network ?",
            style: TextStyles.onbLargeTextStyle,
            textAlign: TextAlign.justify,
          ),
          footer: SocialHandleCaptureWidget(),
          image: const Center(child: Image(image: AssetImage('assets/onboarding_4.png'), height: 175.0)),
          useScrollView: true,
        ),
      ],
      isTopSafeArea: true,
      isProgress: false,
      showDoneButton: true,
      showSkipButton: false,
      showNextButton: false,
      done: const Text("Update profile", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        if (socialHandleText.isNotEmpty) {
          onbProvider.finalize();
        }
      },
    );
  }
}

final mnemonicProvider = StateProvider<TextEditingController>((ref) => TextEditingController());
final socialHandleEditingController = StateProvider<TextEditingController>((ref) => TextEditingController());

final socialHandleProvider = StateProvider((ref) => ""); // TODO: Add username for convenience

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

class SocialHandleCaptureWidget extends ConsumerWidget {
  SocialHandleCaptureWidget({Key? key}) : super(key: key);

  // final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var ctrl = ref.watch(socialHandleProvider);

    return TextField(
      // controller: textEditingController,
      decoration: InputDecoration(
          labelText: "Enter your nickname: ", errorText: ctrl.isEmpty ? "Please enter your nickname" : null),
      autocorrect: false,
      onChanged: (text){
        ref.read(socialHandleProvider.state).state = text;
      },
    );
  }
}
