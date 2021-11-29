import 'package:app/route/router.dart';
import 'package:app/route/router.gr.dart';
import 'package:app/utils/logger.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'utils/palette.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(
    observers: [Logger()],
    child: SuperAlgoApp(),
  ));
}

class SuperAlgoApp extends StatelessWidget {
  SuperAlgoApp({
    Key? key,
  }) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: () => MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Superalgos',
              theme: ThemeData(
                primarySwatch: Palette.saBlue,
                fontFamily: "Saira",
              ),
              routerDelegate: AutoRouterDelegate(
                _appRouter,
                navigatorObservers: () => [AppRouteObserver()],
              ),
              routeInformationProvider: _appRouter.routeInfoProvider(),
              routeInformationParser: _appRouter.defaultRouteParser(),
            ));
  }
}
