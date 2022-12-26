part of widgets;

class ReminderActivityMedicineNameAndType extends StatelessWidget {
  final String? name;
  final String? type;
  final bool isTablet;
  const ReminderActivityMedicineNameAndType({
    super.key,
    required this.name,
    required this.type,
    required this.isTablet,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text: '$name\n',
            style: isTablet
                ? TextStyles.purple14BoldMontserrat
                : TextStyles.orange14BoldMontserrat,
          ),
          TextSpan(
            text: type ?? '',
            style: TextStyles.black14w500Montserrat,
          ),
        ]),
      ),
    );
  }
}
