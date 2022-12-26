part of pages;

class RemindersPage extends StatelessWidget {
  const RemindersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.whiteColor,
      body: SafeArea(
        right: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RemindersBackButton(),
              const VerticalSpacer(30),
              Padding(
                padding: Paddings.horizontal24Padding,
                child: Reminders(loc: context.loc),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
