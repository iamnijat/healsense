part of widgets;

class FeedPharmaciesNearbyPlaceThumbnail extends StatelessWidget {
  final String _thumbnail;
  const FeedPharmaciesNearbyPlaceThumbnail(this._thumbnail, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 150.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppPalette.mainYellowColor,
          image: DecorationImage(
            image: svg_provider.Svg(
              _thumbnail,
            ),
          )),
    );
  }
}
