import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:healsense/application/providers/go_router_provider/routes/global_navigator_keys.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../routes/go_routes.dart';
import '../routes/routes.dart';

final goRouterProvider = Provider<GoRouter>((_) {
  return GoRouter(
    initialLocation: Routes.splashPage,
    navigatorKey: GlobalNavigatorKeys.rootNavigator,
    routes: GoRoutes.routes(GlobalNavigatorKeys.shellNavigator),
  );
});
