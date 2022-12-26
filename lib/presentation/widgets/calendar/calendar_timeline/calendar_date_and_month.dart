part of widgets;

class CalendarDateAndMonth extends StatelessWidget {
  final String dateTime;
  const CalendarDateAndMonth({
    super.key,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CalendarDate(date: _date),
        const HorizontalSpacer(3),
        CalendarMonth(month: _month)
      ],
    );
  }

  String get _date => dateTime.split(" ")[0];
  String get _month => dateTime.split(" ")[1];
}
