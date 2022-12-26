part of widgets;

class CalendarMonth extends StatelessWidget {
  final String month;
  const CalendarMonth({
    super.key,
    required this.month,
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
          month,
          style: TextStyles.black20BoldMontserrat,
          key: ValueKey(month),
        ));
  }
}
