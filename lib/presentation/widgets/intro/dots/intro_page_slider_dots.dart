part of widgets;

class IntroPageSliderDots extends StatelessWidget {
  final IntroPageStateNotifier introPageSlider;

  const IntroPageSliderDots({
    Key? key,
    required this.introPageSlider,
  }) : super(key: key);

  int get _sliderCount => introPageSlider.items.length;

  Stream<int> get _pageIndexStream => introPageSlider.pageIndexStream;

  int? get _pageIndex => introPageSlider.pageIndex;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
        stream: _pageIndexStream,
        initialData: _pageIndex,
        builder: (context, snapshot) {
          final pageIndex = snapshot.requireData;
          return SizedBox(
            height: 8.h,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: _sliderCount,
                itemBuilder: (context, index) {
                  final bool isActive = index == pageIndex;
                  return IntroPageSliderDotItem(index, isActive);
                }),
          );
        });
  }
}
