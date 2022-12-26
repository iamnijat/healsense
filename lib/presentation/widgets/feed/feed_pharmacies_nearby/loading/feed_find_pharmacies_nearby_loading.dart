part of widgets;

class FeedFindPharmaciesNearbyLoading extends StatelessWidget {
  const FeedFindPharmaciesNearbyLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppPalette.mainYellowColor,
      ),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Flexible(
          child: Text(
            context.loc.feedPageFindingPharmaciesNearbyText,
            style: TextStyles.white16BoldMontserrat,
          ),
        ),
        const FeedFindPharmaciesNearbyIcon(
          icon: AppAssets.locationIcon,
        )
      ]),
    );
  }
}
