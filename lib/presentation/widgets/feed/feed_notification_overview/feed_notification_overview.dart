part of widgets;

class FeedNotificationOverview extends StatelessWidget {
  final Loc loc;
  const FeedNotificationOverview({
    super.key,
    required this.loc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeedNotificationViewBox(
          loc: loc,
        ),
        FeedNotificationDetailsBox(
          loc: loc,
        ),
      ],
    );
  }
}
