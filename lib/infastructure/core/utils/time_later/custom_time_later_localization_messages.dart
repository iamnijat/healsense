import 'package:healsense/infastructure/core/constants/typedefs.dart';

class CustomTimeLaterLocalizationMessagesImpl
    implements CustomTimeLaterLocalizationMessages {
  final Loc _loc;

  CustomTimeLaterLocalizationMessagesImpl(this._loc);

  @override
  String lessThanOneMinute(int seconds) => _loc?.customTimeIndicatorNow ?? '';

  @override
  String aboutAMinute(int minute) =>
      '$minute ${_loc?.customTimeIndicatorMinuteLater}';

  @override
  String minutes(int minutes) =>
      '$minutes ${_loc?.customTimeIndicatorNowMinutesLater}';

  @override
  String aboutAnHour(int hour) =>
      '$hours ${_loc?.customTimeIndicatorNowHourLater}';

  @override
  String hours(int hours) => '$hours ${_loc?.customTimeIndicatorNowHoursLater}';
}

abstract class CustomTimeLaterLocalizationMessages {
  String lessThanOneMinute(int seconds);

  String aboutAMinute(int minute);

  String minutes(int minutes);

  String aboutAnHour(int hour);

  String hours(int hours);
}
