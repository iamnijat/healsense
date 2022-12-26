part of widgets;

class FeedPharmaciesNearbyTitle extends StatelessWidget {
  final String _title;
  const FeedPharmaciesNearbyTitle(this._title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        _title,
        textAlign: TextAlign.left,
        style: TextStyles.black20BoldMontserrat,
      ),
    );
  }
}
