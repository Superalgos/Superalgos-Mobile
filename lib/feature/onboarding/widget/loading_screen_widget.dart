import 'package:app/app/widgets/app_button.dart';
import 'package:app/feature/onboarding/provider/profile_creation_provider.dart';
import 'package:app/feature/userprofile/widget/user_profile_page.dart';
import 'package:app/route/router.gr.dart';
import 'package:app/services/web3_service_provider.dart';
import 'package:app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:auto_route/auto_route.dart';

class CreateProfileLoading extends ConsumerWidget {
  const CreateProfileLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Container(
            child: ref.watch(profileCreationProvider).when(
                loading: (mnemonic) => _waitingForProfileCreation(context),
                finalized: (ethAcc) => _finalized(ethAcc, context))));
  }

  Widget _finalized(ETHAccount ethAccount, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [_topContent(context), _bottomCard(ethAccount, context)],
    );
  }

  Widget _waitingForProfileCreation(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Expanded(
          flex: 3,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                top: 60.0,
                left: 0.0,
                right: 0.0,
                child: _centeredRowText(
                    "Waiting for your profile to be created",
                    TextStyles.onbXLargeTextStyle),
              ),
              const Positioned(
                  top: 150,
                  child: SizedBox(
                      height: 80,
                      width: 80,
                      child: LoadingIndicator(
                        indicatorType: Indicator.lineScalePulseOut,
                        colors: UIColors.loadingColors,
                      ))),
            ],
          ))
    ]);
  }

  Widget _topContent(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 60.0,
              left: 0.0,
              right: 0.0,
              child: _centeredRowText(
                  "Congratulations! Your profile is ready !",
                  TextStyles.onbXLargeTextStyle),
            ),
            Positioned(
                top: 150,
                child: Image.asset(
                  "assets/governance.png",
                  width: 170,
                  height: 170,
                )),
          ],
        ));
  }

  Widget _bottomCard(ETHAccount ethAccount, BuildContext context) {
    return Expanded(
        flex: 3,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 24.0,
          ),
          decoration: const BoxDecoration(
            color: UIColors.gray,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              topLeft: Radius.circular(30.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              const Text("Welcome to Superalgos !",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(19, 22, 33, 1))),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Before proceeding to your User Profile page, please make sure you copy your private key and address and save them in a secure place",
                style: TextStyle(
                  color: Color.fromRGBO(74, 77, 84, 1),
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              // Let's create a generic button widget
              AppButton(
                text: "Copy keys",
                type: ButtonType.PLAIN,
                onPressed: () {
                  const snackBar =
                      SnackBar(content: Text('Copied keys to Clipboard'));
                  Clipboard.setData(ClipboardData(text: ethAccount.toString()))
                      .then((value) {
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  });
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              AppButton(
                text: "Go to your profile",
                type: ButtonType.PRIMARY,
                onPressed: () {
                  context.router.push(const UserProfileRoute());
                },
              ),
            ],
          ),
        ));
  }

  Widget _centeredRowText(String text, TextStyle textStyle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Center(
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                text,
                style: textStyle,
              )),
        ))
      ],
    );
  }
}
