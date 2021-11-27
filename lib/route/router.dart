// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:app/app/app_start_page.dart';
import 'package:app/feature/auth/widget/routes.dart';
import 'package:app/feature/onboarding/widget/routes.dart';
import 'package:app/feature/userprofile/widget/routes.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../main.dart';


class AppRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {}
}

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    //RedirectRoute(path: '*', redirectTo: '/'),
    AutoRoute(page: AppStartPage, initial: true),
    signInRouter,
    userProfileRouter,
    onboardingRouter,
  ],
)
class $AppRouter {}
