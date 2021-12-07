import 'package:app/app/widgets/app_button.dart';
import 'package:app/feature/onboarding/provider/profile_creation_provider.dart';
import 'package:app/feature/userprofile/model/user_model.dart';
import 'package:app/feature/userprofile/provider/user_profile_page_provider.dart';
import 'package:app/feature/userprofile/provider/user_profile_provider.dart';
import 'package:app/services/github_service_provider.dart';
import 'package:app/services/web3_service_provider.dart';
import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

class UserProfilePage extends ConsumerWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userProfileProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: state.when(
          loading: () => _widgetShimmer(context, ref),
          profileLoaded: (userModel) => _userProfile(context, ref, userModel)),
    );
  }

  Widget _userProfile(context, ref, UserModel userModel) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: 250.0,
          top: 30,
          child: Opacity(
            opacity: 0.8,
            child: Image.asset(
              "assets/user-profile.png",
              width: 100,
              height: 100,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: kToolbarHeight,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Welcome Back,\n",
                                  style: TextStyles.onbLargeTextStyle
                                      .copyWith(color: UIColors.darkText),
                                ),
                                TextSpan(
                                    text: "${userModel.userName} !",
                                    style: TextStyles.onbLargeTextStyle
                                        .copyWith(color: UIColors.darkText)),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height - 200.0,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: UIColors.gray,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 24.0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                        child: Text(
                          "Your Blockchain power",
                          style: TextStyles.onbLargeTextStyle
                              .copyWith(color: UIColors.darkText),
                        ),
                      ),
                      SizedBox(height: 7.0),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24.0,
                          ),
                          child: FutureBuilder(
                              future: ref
                                  .read(web3ServiceProvider)
                                  .getWalletBalanceForUserAndSignature(
                                      userModel.userName,
                                      userModel.signature.signature),
                              builder: (context, snapshot) {
                                switch (snapshot.connectionState) {
                                  case ConnectionState.waiting:
                                    return CircularProgressIndicator();
                                  default:
                                    if (snapshot.hasError)
                                      return Text('Error: ${snapshot.error}');
                                    else {
                                      return Text(
                                        "${snapshot.data!}",
                                        style: TextStyles.onbXLargeTextStyle
                                            .copyWith(color: UIColors.darkText),
                                      );
                                    }
                                }
                              })),
                      SizedBox(height: 30),
                      AppButton(
                        text: "Logout",
                        type: ButtonType.PRIMARY,
                        onPressed: () {
                          ref.read(userProfilePageProvider.notifier).logout();
                        },
                      ),
                      SizedBox(height: 30),
                      AppButton(
                        text: "Delete fork",
                        type: ButtonType.PLAIN,
                        onPressed: () {
                          ref.read(githubServiceProvider).deleteFork();
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _widgetShimmer(BuildContext context, WidgetRef ref) {
    return const ProfilePageShimmer(hasBottomBox:true ,);
  }
}
