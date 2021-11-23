import 'package:app/app/provider/app_start_provider.dart';
import 'package:app/feature/auth/widget/sign_in_page.dart';
import 'package:app/feature/userprofile/widget/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppStartPage extends ConsumerWidget {

  const AppStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appStartProvider);

    return state.maybeWhen(
      initial: () => const LoadingWidget(),
      authenticated: () => const UserProfilePage(),
      unauthenticated: () => SignInPage(),
      internetUnAvailable: () => const ConnectionUnavailableWidget(),
      orElse: () => const LoadingWidget(),
    );
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
