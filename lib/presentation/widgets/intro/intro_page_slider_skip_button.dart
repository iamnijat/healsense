part of widgets;

class IntroPageSliderSkipButton extends StatelessWidget {
  final IntroPageStateNotifier introPageSlider;
  final Loc loc;
  final bool mounted;

  const IntroPageSliderSkipButton({
    super.key,
    required this.introPageSlider,
    required this.loc,
    required this.mounted,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 60.h,
      right: 24.w,
      child: Align(
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: () => _skip(context),
            child: Text(
              loc?.introPageSkipButtonText ?? '',
              style: TextStyles.white16BoldMontserrat,
            ),
          )),
    );
  }

  void _skip(BuildContext context) {
    introPageSlider.triggerRouteToHomePage();
  }
}
