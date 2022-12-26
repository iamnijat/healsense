part of widgets;

class IntroPageSliderOvalClip extends StatelessWidget {
  final IntroPageStateNotifier introPageSlider;
  final Loc loc;
  final String image;
  final bool mounted;

  const IntroPageSliderOvalClip({
    Key? key,
    required this.introPageSlider,
    required this.loc,
    required this.image,
    required this.mounted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: OvalBottomBorderClipper(),
        child: Container(
          height: 480.h,
          width: context.width,
          color: AppPalette.mainPurpleColor,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: AlignmentDirectional.center,
            children: [
              IntroPageSliderSkipButton(
                introPageSlider: introPageSlider,
                loc: loc,
                mounted: mounted,
              ),
              IntroPageSliderThumbnail(image),
            ],
          ),
        ));
  }
}
