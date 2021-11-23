// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:app/app/app_start_page.dart' as _i1;
import 'package:app/feature/auth/widget/sign_in_page.dart' as _i2;
import 'package:app/feature/userprofile/widget/user_profile_page.dart' as _i3;
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AppStartRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.AppStartPage());
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i2.SignInPage(key: args.key));
    },
    UserProfileRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.UserProfilePage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(AppStartRoute.name, path: '/'),
        _i4.RouteConfig(SignInRoute.name, path: '/signIn'),
        _i4.RouteConfig(UserProfileRoute.name, path: '/profile')
      ];
}

/// generated route for [_i1.AppStartPage]
class AppStartRoute extends _i4.PageRouteInfo<void> {
  const AppStartRoute() : super(name, path: '/');

  static const String name = 'AppStartRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i4.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({_i5.Key? key})
      : super(name, path: '/signIn', args: SignInRouteArgs(key: key));

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for [_i3.UserProfilePage]
class UserProfileRoute extends _i4.PageRouteInfo<void> {
  const UserProfileRoute() : super(name, path: '/profile');

  static const String name = 'UserProfileRoute';
}
