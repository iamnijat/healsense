part of widgets;

class FeedNotificationDetailsBox extends StatelessWidget {
  final Loc loc;
  const FeedNotificationDetailsBox({
    super.key,
    required this.loc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: AppPalette.mainPurpleColor.withOpacity(0.55),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        color: AppPalette.mainPurpleColor,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 30.h,
      ),
      child: Consumer(builder: (_, ref, __) {
        final count = ref.watch(latestMedicineProvider);
        return count.when(
            initial: () => nil,
            loading: () => nil,
            error: () => nil,
            empty: () => nil,
            loaded: (medicine) {
              bool isTablet =
                  medicine?.type == loc?.selectMedicineTypeDialogTablet;
              return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FeedReminderDetailsBoxIcon(isTablet),
                            const HorizontalSpacer(10),
                            FeedReminderDetailsBoxTitleDesc(
                              title: medicine?.name,
                              loc: loc,
                              time: medicine?.time,
                            ),
                          ]),
                    ),
                    FeedReminderDetailsBoxDate(
                      date: medicine?.date,
                      time: medicine?.time,
                    ),
                  ]);
            });
      }),
    );
  }
}
