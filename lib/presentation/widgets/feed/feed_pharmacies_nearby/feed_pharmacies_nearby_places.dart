part of widgets;

class FeedPharmaciesNearbyPlaces extends ConsumerWidget {
  final Loc loc;
  const FeedPharmaciesNearbyPlaces({
    super.key,
    required this.loc,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final places = ref.watch(nearbyPharmaciesProvider);

    return places.when(
        initial: () => const FeedFindPharmaciesNearbyLoading(),
        loading: () => const FeedFindPharmaciesNearbyLoading(),
        empty: () => ErrorOrEmpty(loc: loc),
        error: () => ErrorOrEmpty(loc: loc),
        loaded: (nearbyPlaces) {
          final places = nearbyPlaces?.results;
          return SizedBox(
            height: 230.h,
            child: ListView.builder(
              itemCount: places?.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final results = places?[index];
                return FeedPharmaciesNearbyPlaceItem(
                  results: results,
                  index: index,
                  loc: loc,
                );
              },
            ),
          );
        });
  }
}
