part of widgets;

class ReminderActivityMedicineIcon extends StatelessWidget {
  final String icon;
  const ReminderActivityMedicineIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.h,
      height: 40.h,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        icon,
      ))),
    );
  }
}
