import 'package:flutter_config/flutter_config.dart';

class EnvironmentVarUtil {
  static Future<void> loadEnv() async => await FlutterConfig.loadEnvVariables();

  static String? get googleMapsApiKey =>
      FlutterConfig.get('GOOGLE_MAPS_API_KEY');
}
