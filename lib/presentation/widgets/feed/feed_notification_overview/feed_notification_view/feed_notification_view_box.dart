part of widgets;

class FeedNotificationViewBox extends StatelessWidget {
  final Loc loc;
  const FeedNotificationViewBox({
    super.key,
    required this.loc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: AppPalette.lightGrayColor,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 30.h,
      ),
      child: Consumer(builder: (_, ref, __) {
        final count = ref.watch(todayRemindersCountProvider);
        return count.when(
          initial: () => nil,
          loading: () => nil,
          error: () => nil,
          loaded: (count) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: notificationCountText(
                            count,
                          ),
                          style: TextStyles.black14w500Montserrat,
                        ),
                        TextSpan(
                          text: loc?.feedPageVisitRemindersText,
                          style: TextStyles.gray14w500Montserrat,
                        ),
                      ]),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.notifications_none_rounded,
                      color: AppPalette.mainPurpleColor,
                      size: 27.h,
                    ),
                    const HorizontalSpacer(10),
                    Container(
                      decoration: const BoxDecoration(
                        color: AppPalette.mainYellowColor,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(10.h),
                      child: Center(
                          child: Text(
                        count.toString(),
                        style: TextStyles.white14BoldMontserrat,
                      )),
                    )
                  ],
                )
              ],
            );
          },
        );
      }),
    );
  }

  String? notificationCountText(int? count) {
    if (count == null) return '';
    if (count > 0) {
      return '${loc?.feedPageRemindersCountText(
        count,
      )}\n';
    } else {
      return '${loc?.feedPageNoReminderCountText}\n';
    }
  }
}
