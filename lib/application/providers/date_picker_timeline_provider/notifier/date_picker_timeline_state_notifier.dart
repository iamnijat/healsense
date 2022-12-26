import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/infastructure/core/utils/date_format_util.dart';

class DatePickerTimelineStateNotifier extends StateNotifier<DateTime> {
  DatePickerTimelineStateNotifier()
      : super(
          DateFormatUtil.dateMonthYearFormatted(
            DateFormatUtil.dateTimeNow.toString(),
          ),
        );

  set date(DateTime value) => state = value;

  void selectDate(DateTime selectedDate) {
    date = dateMonthYearFormatted(selectedDate);
  }

  DateTime dateMonthYearFormatted(
    DateTime date,
  ) {
    return DateFormatUtil.dateMonthYearFormatted(
      date.toString(),
    );
  }
}
