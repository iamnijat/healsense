import 'package:healsense/infastructure/core/constants/typedefs.dart';
import 'package:healsense/infastructure/core/utils/date_format_util.dart';
import 'package:healsense/infastructure/core/utils/time_later/custom_time_later_localization_messages.dart';

class TimeLaterUtil {
  const TimeLaterUtil._();

  static String getTimeDifference(DateTime time, Loc loc) {
    String? result;

    final messages = CustomTimeLaterLocalizationMessagesImpl(loc);
    final now = DateFormatUtil.dateTimeNow;

    final difference = time.difference(now);
    final diffInHours = difference.inHours;
    final diffInMinutes = difference.inMinutes;
    final diffInSeconds = difference.inSeconds;

    if (diffInSeconds < 60) {
      result = messages.lessThanOneMinute(diffInMinutes);
    }
    if (diffInMinutes >= 1 && diffInMinutes < 2) {
      result = messages.aboutAMinute(diffInMinutes);
    }
    if (diffInMinutes >= 2 && diffInMinutes <= 60) {
      result = messages.minutes(diffInMinutes);
    }
    if (diffInMinutes >= 61 && diffInMinutes <= 119) {
      result = messages.aboutAnHour(diffInHours);
    }
    if (diffInHours >= 2) {
      result = messages.hours(diffInHours);
    }

    return result ?? '';
  }
}
