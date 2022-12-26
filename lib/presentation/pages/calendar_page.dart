part of pages;

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc;
    return Scaffold(
      backgroundColor: AppPalette.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const VerticalSpacer(8),
              const CalendarThumbnail(),
              const CalendarDatePickerTimeline(),
              const VerticalSpacer(25),
              Padding(
                padding: Paddings.horizontal24Padding,
                child: CalendarActivities(
                  loc: loc,
                ),
              ),
              const VerticalSpacer(25),
            ])),
      ),
    );
  }
}
