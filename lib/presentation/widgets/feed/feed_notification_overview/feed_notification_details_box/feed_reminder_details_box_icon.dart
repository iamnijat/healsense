part of widgets;

class FeedReminderDetailsBoxIcon extends StatelessWidget {
  final bool _isTablet;
  const FeedReminderDetailsBoxIcon(
    this._isTablet, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.h,
      height: 40.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppPalette.mainYellowColor,
          image: DecorationImage(
            image: AssetImage(
              _icon,
            ),
          )),
    );
  }

  String get _icon =>
      _isTablet ? AppAssets.tabletMedicineIcon : AppAssets.liquidMedicineIcon;
}
