part of widgets;

class FeedPharmaciesNearbyPlaceOverview extends StatelessWidget {
  final String? title;
  final String? desc;
  const FeedPharmaciesNearbyPlaceOverview({
    super.key,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title?.firstCapitalize ?? "",
          style: TextStyles.black15BoldLineHeightMontserratEllipsis,
          maxLines: 2,
        ),
        const VerticalSpacer(4),
        Text(
          desc ?? "",
          style: TextStyles.gray14w500MontserratEllipsis,
          maxLines: 1,
        )
      ],
    );
  }
}
