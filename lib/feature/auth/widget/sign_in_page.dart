import 'package:app/app/widgets/app_button.dart';
import 'package:app/feature/auth/provider/auth_provider.dart';
import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPage extends ConsumerWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Container(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _topContent(context),
        _bottomCard(context, ref)
        // _bottomCard(ethAccount, context)
      ],
    )));
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
              child:
                  _centeredRowText("Welcome", TextStyles.onbXLargeTextStyle),
            ),
            Positioned(
                top: 70,
                child: Image.asset(
                  "assets/sa_platform.png",
                  width: 300,
                  height: 350,
                )),
          ],
        ));
  }
  Widget _bottomCard(BuildContext context, WidgetRef ref) {
    return Expanded(
        flex: 2,
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
              Text("To continue please: ", style: TextStyles.onbLargeTextStyle),
              const SizedBox(
                height: 30.0,
              ),
              AppButton(
                text: "Login with Github",
                type: ButtonType.PRIMARY,
                onPressed: () {
                  print("login");
                  ref.read(authProvider.notifier).login();
                },
              ),
              const SizedBox(height: 20.0),
              Row(children: [
                Column(children: [Text("Powered by")],),
                Column(children: [Image.asset("assets/sa_logo.png", width: 100, height: 100,),],)
              ],)
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
