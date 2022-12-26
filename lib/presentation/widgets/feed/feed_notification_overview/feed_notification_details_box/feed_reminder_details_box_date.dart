part of widgets;

class FeedReminderDetailsBoxDate extends StatelessWidget {
  final DateTime? date;
  final DateTime? time;
  const FeedReminderDetailsBoxDate({
    super.key,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text: "$_parsedDate\n",
            style: TextStyles.white14BoldMontserrat,
          ),
          TextSpan(
            text: _parsedTime,
            style: TextStyles.white14w500Montserrat,
          ),
        ]),
      ),
    );
  }

  String get _parsedDate => DateFormatUtil.dateMonthNameParsed(
        date!,
      );

  String get _parsedTime => DateFormatUtil.hourMinuteMeridiemParsed(
        time!,
      );
}
