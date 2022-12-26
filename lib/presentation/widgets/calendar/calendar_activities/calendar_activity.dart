part of widgets;

class CalendarActivity extends StatelessWidget {
  final int index;
  final MedicineData? medicine;
  final Loc loc;
  final WidgetRef ref;

  const CalendarActivity({
    super.key,
    required this.index,
    required this.medicine,
    required this.loc,
    required this.ref,
  });

  String get _icon =>
      _isTablet ? AppAssets.tabletMedicineIcon : AppAssets.liquidMedicineIcon;

  Color get _boxColor => index % 2 == 0
      ? AppPalette.lightPurpleColor
      : AppPalette.lightYellowColor;

  EdgeInsets get _topPadding =>
      index > 0 ? EdgeInsets.only(top: 12.h) : EdgeInsets.zero;

  @override
  Widget build(BuildContext context) {
    return CalendarActivityDismissible(
        onDismissTap: _deleteMedicine,
        id: medicine?.id,
        child: IntrinsicHeight(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              ReminderActivityTimeline(
                time: medicine?.time,
              ),
              Container(
                  margin: _topPadding,
                  padding: EdgeInsets.symmetric(
                    vertical: 30.h,
                    horizontal: 24.w,
                  ),
                  width: 290.w,
                  decoration: BoxDecoration(
                    color: _boxColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ReminderActivityMedicineIcon(
                                icon: _icon,
                              ),
                              const HorizontalSpacer(15),
                              ReminderActivityMedicineNameAndType(
                                isTablet: _isTablet,
                                name: medicine?.name,
                                type: medicine?.type,
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: ReminderActivityMedicineAmountBox(
                            amount: medicine?.amount,
                            loc: loc,
                            isTablet: _isTablet,
                          ),
                        ),
                      ]))
            ])));
  }

  Future<void> _deleteMedicine() async {
    await ref
        .read(
          deleteMedicineProvider.notifier,
        )
        .deleteMedicine(
          medicine?.id,
          medicine?.isNotified,
        );

    final _ = ref.refresh(medicinesByDateProvider);
  }

  bool get _isTablet => medicine?.type == loc?.selectMedicineTypeDialogTablet;
}
