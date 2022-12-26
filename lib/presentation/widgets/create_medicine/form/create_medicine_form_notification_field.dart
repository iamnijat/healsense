part of widgets;

class CreateMedicineFormNotificationField extends ConsumerWidget {
  final Loc loc;
  const CreateMedicineFormNotificationField({
    super.key,
    required this.loc,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(createMedicineNotificationProvider.notifier);
    final isNotified = ref.watch(createMedicineNotificationProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CreateMedicineFormFieldTitle(
          title: loc?.createMedicinePageFormNotificationsTitle,
        ),
        CupertinoSwitch(
          value: isNotified,
          onChanged: (value) {
            notifier.toggle(value);
          },
          thumbColor: AppPalette.mainPurpleColor,
          trackColor: AppPalette.lightGrayColor,
          activeColor: AppPalette.lightPurpleColor,
        ),
      ],
    );
  }
}
