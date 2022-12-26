import 'package:timezone/timezone.dart';
import 'package:timezone/data/latest.dart';

class TimezoneUtil {
  static void initTimeZones() => initializeTimeZones();

  static TZDateTime convertTimezone(DateTime date) =>
      TZDateTime.from(date, _location);

  static Location get _location => getLocation(_locations.keys.first);

  static Map<String, Location> get _locations => timeZoneDatabase.locations;
}
