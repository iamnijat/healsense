part of widgets;

class CalendarDatePickerTimeline extends ConsumerWidget {
  const CalendarDatePickerTimeline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateTime = ref.watch(datePickerTimelineProvider);
    return Padding(
      padding: Paddings.horizontal24Padding,
      child: Column(
        children: [
          const VerticalSpacer(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CalendarDateAndMonth(
                dateTime: _formattedDate(dateTime),
              ),
              CalendarYear(
                year: _year(dateTime),
              )
            ],
          ),
          const VerticalSpacer(15),
          DatePickerTimeline(
            DateFormatUtil.initialDate,
            height: 105.h,
            onDateChange: (selectedDate) => _selectDate(
              ref,
              selectedDate,
            ),
            width: 60.w,
            initialSelectedDate: dateTime,
            selectionColor: AppPalette.mainPurpleColor,
            selectedTextColor: AppPalette.whiteColor,
            deactivatedColor: AppPalette.blackColor,
            dateTextStyle: TextStyles.gray14w500Montserrat,
          ),
        ],
      ),
    );
  }

  void _selectDate(
    WidgetRef ref,
    DateTime selectedDate,
  ) {
    ref.read(datePickerTimelineProvider.notifier).selectDate(
          selectedDate,
        );
  }

  String _year(DateTime date) => _formattedDate(date).split(' ')[2];

  String _formattedDate(DateTime date) =>
      DateFormatUtil.dateMonthNameYearParsed(date);
}
