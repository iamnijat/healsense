import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentVarUtil {
  static Future<void> loadEnv() async => await dotenv.load(fileName: ".env");

  static String? get googleMapsApiKey => dotenv.env['GOOGLE_MAPS_API_KEY'];
}
