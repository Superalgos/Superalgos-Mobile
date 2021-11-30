// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:app/app/app_start_page.dart' as _i1;
import 'package:app/feature/auth/widget/sign_in_page.dart' as _i2;
import 'package:app/feature/onboarding/widget/onboarding_page.dart' as _i4;
import 'package:app/feature/userprofile/widget/user_profile_page.dart' as _i3;
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AppStartRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.AppStartPage());
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: _i2.SignInPage(key: args.key));
    },
    UserProfileRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.UserProfilePage());
    },
    OnboardingRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.OnboardingPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(AppStartRoute.name, path: '/'),
        _i5.RouteConfig(SignInRoute.name, path: '/signIn'),
        _i5.RouteConfig(UserProfileRoute.name, path: '/profile'),
        _i5.RouteConfig(OnboardingRoute.name, path: '/onboarding')
      ];
}

/// generated route for [_i1.AppStartPage]
class AppStartRoute extends _i5.PageRouteInfo<void> {
  const AppStartRoute() : super(name, path: '/');

  static const String name = 'AppStartRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({_i6.Key? key})
      : super(name, path: '/signIn', args: SignInRouteArgs(key: key));

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for [_i3.UserProfilePage]
class UserProfileRoute extends _i5.PageRouteInfo<void> {
  const UserProfileRoute() : super(name, path: '/profile');

  static const String name = 'UserProfileRoute';
}

/// generated route for [_i4.OnboardingPage]
class OnboardingRoute extends _i5.PageRouteInfo<void> {
  const OnboardingRoute() : super(name, path: '/onboarding');

  static const String name = 'OnboardingRoute';
}
