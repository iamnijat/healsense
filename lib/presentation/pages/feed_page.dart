part of pages;

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc;
    return Scaffold(
      backgroundColor: AppPalette.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: Paddings.horizontal24Padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FeedTopReminderItem(),
                const VerticalSpacer(30),
                FeedHealthConditionStatement(
                  loc: loc,
                ),
                const VerticalSpacer(60),
                FeedNotificationOverview(
                  loc: loc,
                ),
                const VerticalSpacer(50),
                FeedPharmaciesNearbyTitle(
                  loc.feedPagePharmaciesNearbyTitle,
                ),
                const VerticalSpacer(30),
                FeedPharmaciesNearbyPlaces(
                  loc: loc,
                ),
                const VerticalSpacer(90),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
