part of widgets;

class IntroPageSliderItem extends StatelessWidget {
  final IntroPageStateNotifier introPageSlider;
  final IntroPageState state;
  final int index;
  final bool mounted;

  const IntroPageSliderItem({
    super.key,
    required this.index,
    required this.introPageSlider,
    required this.state,
    required this.mounted,
  });

  List<IntroPageSlider> get _sliders => introPageSlider.items;

  IntroPageSlider get _item => _sliders[index];

  @override
  Widget build(BuildContext context) {
    final loc = context.loc;
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      IntroPageSliderOvalClip(
        introPageSlider: introPageSlider,
        loc: loc,
        image: _item.image,
        mounted: mounted,
      ),
      const VerticalSpacer(30),
      IntroPageSliderTitle(_item.title),
      const VerticalSpacer(12),
      IntroPageSliderDesc(_item.desc),
      const VerticalSpacer(20),
      IntroPageSliderDots(introPageSlider: introPageSlider),
      const Spacer(),
      IntroPageSliderButton(
        introPageSlider: introPageSlider,
        loc: loc,
        isLoading: state.isLoading,
        mounted: mounted,
      ),
    ]);
  }
}
