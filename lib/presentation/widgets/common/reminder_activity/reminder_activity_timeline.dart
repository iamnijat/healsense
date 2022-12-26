part of widgets;

class ReminderActivityTimeline extends StatelessWidget {
  final DateTime? time;
  const ReminderActivityTimeline({
    super.key,
    required this.time,
  });

  String get _formattedTime => DateFormatUtil.hourMinuteParsed(time!);
  List<String> get _timeSplitted => _formattedTime.split(':');

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _timeSplitted[0],
          style: TextStyles.purple14BoldMontserrat,
        ),
        Text(
          ":",
          style: TextStyles.purple14BoldMontserrat,
        ),
        Text(
          _timeSplitted[1],
          style: TextStyles.purple14BoldMontserrat,
        ),
      ],
    );
  }
}
