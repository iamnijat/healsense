part of widgets;

class FeedPharmaciesNearbyPlaceItem extends StatelessWidget {
  final Results? results;
  final int index;
  final Loc loc;
  const FeedPharmaciesNearbyPlaceItem({
    super.key,
    required this.results,
    required this.index,
    required this.loc,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final location = results?.geometry?.location;
        final lat = location?.lat;
        final lng = location?.lng;
        final loc = '$lat,$lng';
        final url = loc.locUrl;
        _launchUrl(url);
      },
      child: Container(
        height: 150.h,
        width: 150.w,
        color: AppPalette.whiteColor,
        margin: _innerMargin(index),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeedPharmaciesNearbyPlaceThumbnail(
              PharmacyThumbnailsUtil.thumbnail,
            ),
            const VerticalSpacer(10),
            FeedPharmaciesNearbyPlaceOverview(
                title: results?.name,
                desc: pharmacySituationText(
                  results?.openingHours?.openNow,
                ))
          ],
        ),
      ),
    );
  }

  String? pharmacySituationText(bool? openNow) {
    if (_isClosed(openNow)) {
      return loc?.feedPagePharmacyClosedText;
    } else {
      return loc?.feedPagePharmacyOpenText;
    }
  }

  bool _isClosed(bool? openNow) => openNow == false;

  EdgeInsets _innerMargin(int index) =>
      index == 0 ? EdgeInsets.zero : EdgeInsets.only(left: 20.w);

  Future<void> _launchUrl(String? url) async {
    if (!await launchUrl(
      url.parsedUri,
      mode: LaunchMode.externalApplication,
    )) {
      throw CouldNotLaunchUrlException();
    }
  }
}
