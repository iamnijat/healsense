part of widgets;

class ReminderActivityMedicineAmountBox extends StatelessWidget {
  final String? amount;
  final Loc loc;
  final bool isTablet;
  const ReminderActivityMedicineAmountBox({
    super.key,
    required this.amount,
    required this.loc,
    required this.isTablet,
  });

  String? get _amountText => isTablet
      ? loc?.calendarMedicineTabletAmount
      : loc?.calendarMedicineLiquidAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
      width: 70.w,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 14,
            spreadRadius: 2,
            color: Colors.black12,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        color: AppPalette.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            amount ?? '',
            style: TextStyles.black15BoldMontserrat,
          ),
          const VerticalSpacer(4),
          Text(
            _amountText ?? '',
            style: TextStyles.black14w500Montserrat,
          ),
        ],
      ),
    );
  }
}
