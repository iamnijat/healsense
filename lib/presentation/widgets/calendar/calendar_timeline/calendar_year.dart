part of widgets;

class CalendarYear extends StatelessWidget {
  final String year;
  const CalendarYear({
    super.key,
    required this.year,
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
          year,
          style: TextStyles.black20BoldMontserrat,
          key: ValueKey(year),
        ));
  }
}
