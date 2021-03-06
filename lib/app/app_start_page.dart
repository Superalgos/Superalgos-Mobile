import 'package:app/app/provider/app_start_provider.dart';
import 'package:app/feature/auth/widget/sign_in_page.dart';
import 'package:app/feature/onboarding/widget/onboarding_page.dart';
import 'package:app/feature/userprofile/widget/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

class AppStartPage extends ConsumerWidget {
  const AppStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appStartProvider);

    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 350),
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeOut,
        transitionBuilder: (child, animation) {
          return SlideTransition(
            position: Tween<Offset>(begin: Offset(1.2, 0), end: Offset(0, 0))
                .animate(animation),
            child: child,
          );
        },
        child: state.maybeWhen(
          initial: () => LoadingWidget(key: UniqueKey()),
          authenticated: () => UserProfilePage(key: UniqueKey()),
          onboarding: (fullOnboarding) => OnboardingPage(key: UniqueKey()),
          unauthenticated: () => SignInPage(key: UniqueKey()),
          internetUnAvailable: () =>
              ConnectionUnavailableWidget(key: UniqueKey()),
          orElse: () => LoadingWidget(key: UniqueKey()),
        ));
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ProfilePageShimmer(hasBottomBox: true, isRectBox: false,));
        /* Padding( padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 5),child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              ProfileShimmer(hasBottomLines: true,)
            ],),
            Divider(),
            Row(children: [
              YoutubeShimmer(hasBottomBox: true,)
            ],),
            Divider(),
            Row(children: [
              ProfileShimmer()
            ],),
            Divider(),
            Row(children: [
              PlayStoreShimmer()
            ],),
        ],)));*/
  }
}

class ConnectionUnavailableWidget extends StatelessWidget {
  const ConnectionUnavailableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
