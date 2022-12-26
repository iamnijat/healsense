part of widgets;

class CustomBottomNavigationBar extends ConsumerWidget {
  final Loc loc;
  const CustomBottomNavigationBar({
    super.key,
    required this.loc,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navigationTabProvider);
    return FancyBottomNavigationBar(
      selectedIndex: index,
      backgroundColor: AppPalette.whiteColor,
      color: AppPalette.blackColor,
      activeColor: AppPalette.whiteColor,
      tabBackgroundColor: AppPalette.mainPurpleColor,
      gap: 8,
      padding: Paddings.all14Padding,
      onTabChange: (value) {
        _onTap(
          value,
          ref: ref,
          context: context,
        );
      },
      tabs: [
        FancyButton(
          icon: Icons.dashboard_rounded,
          text: loc?.bottomNavigationBarFeedText ?? '',
          iconSize: 24.h,
          textStyle: TextStyles.white14BoldMontserrat,
        ),
        FancyButton(
          icon: Icons.add_rounded,
          text: loc?.bottomNavigationBarNewText ?? '',
          iconSize: 24.h,
          textStyle: TextStyles.white14BoldMontserrat,
        ),
        FancyButton(
          icon: Icons.calendar_month_rounded,
          text: loc?.bottomNavigationBarCalendarText ?? '',
          iconSize: 24.h,
          textStyle: TextStyles.white14BoldMontserrat,
        ),
      ],
    );
  }

  void _onTap(
    int index, {
    required WidgetRef ref,
    required BuildContext context,
  }) {
    ref.read(navigationTabProvider.notifier).select(index);
    switch (index) {
      case 0:
        context.go(Routes.feedPage);
        break;
      case 1:
        context.go(Routes.createMedicinePage);
        break;
      case 2:
        context.go(Routes.calendarPage);
        break;
    }
  }
}
