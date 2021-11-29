import 'package:app/feature/onboarding/provider/profile_creation_provider.dart';
import 'package:app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_indicator/loading_indicator.dart';

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

    pcp.maybeWhen(loading: (mnemonic) {_textController.text = mnemonic!;}, orElse: () {});

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
