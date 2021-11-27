import 'dart:html';

import 'package:app/feature/onboarding/provider/onboarding_provider.dart';
import 'package:app/feature/onboarding/provider/profile_creation_provider.dart';
import 'package:app/route/router.gr.dart';
import 'package:app/utils/constants.dart';
import 'package:app/utils/palette.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:loading_indicator/loading_indicator.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(onboardingProvider);
    var onbProvider = ref.read(onboardingProvider.notifier);

    return state.maybeWhen(slideShowFinalized: () {
      return const CreateProfileLoading();
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

class CreateProfileLoading extends ConsumerStatefulWidget {
  const CreateProfileLoading({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateProfileLoadingState();
}

class _CreateProfileLoadingState extends ConsumerState<CreateProfileLoading> {
  final TextEditingController _textController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: _textController.text));

    ScaffoldMessenger.of(context)
        .showSnackBar((SnackBar(content: Text('Copied to clipboard'))));
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => ref.read(profileCreationProvider.notifier).startONBActions());
  }

  @override
  Widget build(BuildContext context) {
    final pcp = ref.watch(profileCreationProvider);

    

    return Scaffold(
      key: _scaffoldKey,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "Waiting for the profile to be created",
              style: TextStyles.onbLargeTextStyle,
            )
          ],
        ),
        Container(
          margin: EdgeInsets.all(30),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                      height: 80,
                      width: 80,
                      child: LoadingIndicator(
                        indicatorType: Indicator.lineScalePulseOut,
                        colors: UIColors.loadingColors,
                      ))
                ]),
          ],
        ),
        Container(
          margin: EdgeInsets.all(30),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Flexible(
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Before going further, please make sure you copy the private key and save it in a secure place.",
                      style: TextStyles.onbSmallTextStyle,
                    )))
          ],
        ),
        Container(
          margin: EdgeInsets.all(30),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
                child: Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  enabled: true,
                  controller: _textController,
                  decoration: InputDecoration(
                    labelText: "Private key",
                    icon: IconButton(
                      icon: Icon(Icons.copy),
                      onPressed: _copyToClipboard,
                    ),
                  )),
            )),
          ],
        )
      ]),
    );
  }
}
