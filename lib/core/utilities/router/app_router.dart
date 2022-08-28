import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maksafy/ui/pages/container/container_page.dart';
import 'package:maksafy/core/utilities/router/global_routes.dart';
import 'package:maksafy/ui/pages/splash/splash_page.dart';

/// Contains all the possible routes of the app
class AppRouter {
  static final router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: InitialRoutes.splash.route.path,
    routes: _initialRoutes,
  );

  static final _initialRoutes = [
    GoRoute(
      name: InitialRoutes.splash.route.name,
      path: InitialRoutes.splash.route.path,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: SplashPage()
      ),
    ),
    GoRoute(
      name: InitialRoutes.homeContainer.route.name,
      path: InitialRoutes.homeContainer.route.path,
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: ContainerPage(
          tab: state.params['tab'] ?? BottomBarRoutes.home,
        ),
      ),
    ),
  ];
}
