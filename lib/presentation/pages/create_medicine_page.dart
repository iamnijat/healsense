part of pages;

class CreateMedicinePage extends StatelessWidget {
  const CreateMedicinePage({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc;
    return Scaffold(
      backgroundColor: AppPalette.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpacer(8),
              const CreateMedicineThumbnail(),
              const VerticalSpacer(35),
              CreateMedicineForm(loc: loc),
              const VerticalSpacer(35),
              buildViewInsetsPadding(context),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildViewInsetsPadding(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: context.viewInsetsBottom,
      ),
    );
  }
}
