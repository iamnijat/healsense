part of widgets;

class CalendarActivityDismissible extends StatelessWidget {
  final Widget child;
  final int? id;
  final VoidCallback onDismissTap;
  const CalendarActivityDismissible(
      {Key? key,
      required this.child,
      required this.id,
      required this.onDismissTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      movementDuration: Durations.oneSecondDuration,
      resizeDuration: Durations.sixHundredMillisecondsDuration,
      onDismissed: (direction) => onDismissTap(),
      background: const CalendarActivityDismissibleLeftTransition(),
      key: ValueKey('$id'),
      direction: DismissDirection.endToStart,
      child: child,
    );
  }
}
