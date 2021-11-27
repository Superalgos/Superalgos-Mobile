import 'package:app/app/provider/app_start_provider.dart';
import 'package:app/feature/auth/widget/sign_in_page.dart';
import 'package:app/feature/onboarding/widget/onboarding_widget.dart';
import 'package:app/feature/userprofile/widget/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppStartPage extends ConsumerWidget {
  const AppStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appStartProvider);

    return AnimatedSwitcher(
        duration: Duration(seconds: 2),

        child: state.maybeWhen(
          initial: () =>  LoadingWidget(key: UniqueKey()),
          authenticated: () =>  UserProfilePage(key: UniqueKey()),
          onboarding: () =>  OnboardingPage(key: UniqueKey()),
          unauthenticated: () => SignInPage(key: UniqueKey()),
          internetUnAvailable: () =>  ConnectionUnavailableWidget(key: UniqueKey()),
          orElse: () => LoadingWidget(key: UniqueKey()),
        ));
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ConnectionUnavailableWidget extends StatelessWidget {
  const ConnectionUnavailableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
