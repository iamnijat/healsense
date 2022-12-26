/// ***
/// This class consists of the DateWidget that is used in the ListView.builder
///
/// Author: Vivek Kaushik <me@vivekkasuhik.com>
/// github: https://github.com/iamvivekkaushik/
/// ***

import 'package:flutter/material.dart';
import 'package:healsense/presentation/widgets/common/date_picker_timeline/extra/color.dart';
import 'package:intl/intl.dart';

import 'gestures/tap.dart';

class DatePickerTimelineWidget extends StatelessWidget {
  final double? width;
  final DateTime date;
  final TextStyle? monthTextStyle, dayTextStyle, dateTextStyle;
  final Color selectionColor;
  final DateSelectionCallback? onDateSelected;
  final String? locale;

  const DatePickerTimelineWidget({
    super.key,
    required this.date,
    required this.monthTextStyle,
    required this.dayTextStyle,
    required this.dateTextStyle,
    required this.selectionColor,
    this.width,
    this.onDateSelected,
    this.locale,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(35),
      child: Container(
        width: width,
        margin: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: selectionColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(9),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.defaultDateBackColor,
                ),
                child: Center(
                  child: Text(date.day.toString(), // Date
                      style: dateTextStyle),
                ),
              ),
              Text(
                  DateFormat("MMM", locale).format(date).toUpperCase(), // Month
                  style: monthTextStyle),
              Text(
                  DateFormat("E", locale).format(date).toUpperCase(), // WeekDay
                  style: dayTextStyle)
            ],
          ),
        ),
      ),
      onTap: () {
        // Check if onDateSelected is not null
        if (onDateSelected != null) {
          // Call the onDateSelected Function
          onDateSelected!(date);
        }
      },
    );
  }
}
