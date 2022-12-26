part of widgets;

class CreateMedicineFormFieldTitle extends StatelessWidget {
  final String? title;
  const CreateMedicineFormFieldTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: TextStyles.black16BoldMontserrat,
    );
  }
}
