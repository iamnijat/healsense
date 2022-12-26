part of widgets;

class FeedReminderDetailsBoxTitleDesc extends StatelessWidget {
  final String? title;
  final DateTime? time;
  final Loc loc;
  const FeedReminderDetailsBoxTitleDesc({
    super.key,
    required this.title,
    required this.loc,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text: "$title\n",
            style: TextStyles.white14BoldMontserrat,
          ),
          TextSpan(
            text: TimeLaterUtil.getTimeDifference(time!, loc),
            style: TextStyles.white14w500Montserrat,
          ),
        ]),
      ),
    );
  }
}
