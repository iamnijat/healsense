import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'infastructure/core/constants/palette.dart';
import 'infastructure/core/utils/environment_var_util.dart';
import 'infastructure/core/utils/timezone_util.dart';

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

    TimezoneUtil.initTimeZones();

    // Initialize Google Maps with API key for iOS
    final googleMapsApiKey = EnvironmentVarUtil.googleMapsApiKey;
    if (googleMapsApiKey != null && googleMapsApiKey.isNotEmpty) {
      try {
        const platform = MethodChannel('com.healsense.googlemaps');
        await platform.invokeMethod('setApiKey', {'apiKey': googleMapsApiKey});
      } catch (e) {
        Fimber.w('Failed to set Google Maps API key: $e');
      }
    }
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
