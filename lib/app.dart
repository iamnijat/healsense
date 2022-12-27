import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:healsense/di/di.dart';

import 'application/providers/go_router_provider/provider/go_router_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(376, 920),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return Consumer(builder: (_, ref, __) {
            final router = ref.watch(goRouterProvider);
            ref
                .read(localNotificationsRepositoryProvider)
                .initializeNotification();
            return MaterialApp.router(
              title: 'HealSense',
              debugShowCheckedModeBanner: false,
              locale: const Locale('en'),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              routerDelegate: router.routerDelegate,
              routeInformationParser: router.routeInformationParser,
              routeInformationProvider: router.routeInformationProvider,
            );
          });
        });
  }
}
