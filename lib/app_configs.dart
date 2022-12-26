import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'domain/repositories/local_notifications_repository.dart';
import 'infastructure/core/constants/palette.dart';
import 'infastructure/core/utils/environment_var_util.dart';
import 'infastructure/core/utils/timezone_util.dart';
import 'di/di.dart';

class AppConfigs {
  const AppConfigs._();

  static Future<void> config() async {
    runZonedGuarded<Future<void>>(() async {
      WidgetsFlutterBinding.ensureInitialized();

      _buildFimberTree();

      await _init();

      _buildSystemUIOptions();

      runApp(
        const ProviderScope(
          child: MyApp(),
        ),
      );
    }, (error, stackTrace) {
      Fimber.e('Error in main thread appeared. 😥',
          ex: error, stacktrace: stackTrace);
    });
  }

  static Future<void> _init() async {
    await EnvironmentVarUtil.loadEnv();

    await setupLocator();

    TimezoneUtil.initTimeZones();

    await getIt<LocalNotificationsRepository>().initializeNotification();
  }

  static void _buildFimberTree() {
    if (kDebugMode) {
      Fimber.plantTree(DebugTree());
    }
  }

  static void _buildSystemUIOptions() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppPalette.transparentColor,
    ));

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }
}
