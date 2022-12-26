part of widgets;

class TimePicker extends StatelessWidget {
  final void Function(DateTime) _onTap;
  const TimePicker(this._onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.h,
      child: CupertinoDatePicker(
        initialDateTime: currentTime,
        mode: CupertinoDatePickerMode.time,
        onDateTimeChanged: (date) => _onTap(date),
      ),
    );
  }

  static DateTime get currentTime => DateFormatUtil.dateTimeNow;
}
