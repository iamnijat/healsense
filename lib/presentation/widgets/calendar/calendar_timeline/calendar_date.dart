part of widgets;

class CalendarDate extends StatelessWidget {
  final String date;
  const CalendarDate({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: Durations.twoHundredMillisecondsDuration,
        transitionBuilder: (Widget child, Animation<double> animation) =>
            ScaleTransition(
              scale: animation,
              child: child,
            ),
        child: Text(
          date,
          style: TextStyles.black20BoldMontserrat,
          key: ValueKey(date),
        ));
  }
}
