import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healsense/application/providers/go_router_provider/routes/routes.dart';

import '../../../../presentation/pages/index.dart';

class GoRoutes {
  const GoRoutes._();

  static dynamic routes(GlobalKey<NavigatorState> shellNav) => [
        GoRoute(
          path: Routes.splashPage,
          pageBuilder: (BuildContext context, GoRouterState state) =>
              MaterialPage<void>(key: state.pageKey, child: const SplashPage()),
        ),
        GoRoute(
          path: Routes.homePage,
          pageBuilder: (BuildContext context, GoRouterState state) =>
              MaterialPage<void>(key: state.pageKey, child: const FeedPage()),
        ),
        ShellRoute(
            navigatorKey: shellNav,
            builder: (context, state, child) =>
                HomePage(key: state.pageKey, child: child),
            routes: [
              GoRoute(
                path: Routes.feedPage,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                      child: FeedPage(
                    key: state.pageKey,
                  ));
                },
              ),
              GoRoute(
                path: Routes.calendarPage,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                      child: CalendarPage(
                    key: state.pageKey,
                  ));
                },
              ),
              GoRoute(
                path: Routes.createMedicinePage,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                      child: CreateMedicinePage(
                    key: state.pageKey,
                  ));
                },
              ),
              GoRoute(
                path: Routes.remindersPage,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                      child: RemindersPage(
                    key: state.pageKey,
                  ));
                },
              ),
            ]),
        GoRoute(
          path: Routes.introPage,
          pageBuilder: (BuildContext context, GoRouterState state) =>
              MaterialPage<void>(key: state.pageKey, child: const IntroPage()),
        ),
        GoRoute(
          path: Routes.errorPage,
          pageBuilder: (BuildContext context, GoRouterState state) =>
              MaterialPage<void>(
                  key: state.pageKey, child: const RouteErrorPage()),
        ),
      ];
}
