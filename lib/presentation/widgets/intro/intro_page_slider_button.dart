part of widgets;

class IntroPageSliderButton extends StatefulWidget {
  final IntroPageStateNotifier introPageSlider;
  final Loc loc;
  final bool isLoading;
  final bool mounted;
  const IntroPageSliderButton({
    Key? key,
    required this.introPageSlider,
    required this.loc,
    required this.isLoading,
    required this.mounted,
  }) : super(key: key);

  @override
  State<IntroPageSliderButton> createState() => _IntroPageSliderButtonState();
}

class _IntroPageSliderButtonState extends State<IntroPageSliderButton>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _sizeAnimation;
  Animation<double>? _curve;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Durations.sixHundredMillisecondsDuration,
    );

    _curve = CurvedAnimation(
        parent: _animationController!, curve: Curves.slowMiddle);

    _sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 30.w, end: 70.w), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 70.w, end: 30.w), weight: 50),
    ]).animate(_curve!);
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
        stream: _pageIndexStream,
        initialData: _pageIndex,
        builder: (context, snapshot) {
          final pageIndex = snapshot.requireData;
          final lastIndex = _sliderCount - 1;
          final isLastSlider = pageIndex == lastIndex;
          return AnimatedBuilder(
              animation: _animationController!,
              builder: (context, _) {
                return Container(
                  width: context.width,
                  height: 60.h,
                  margin:
                      EdgeInsets.symmetric(horizontal: _sizeAnimation!.value),
                  decoration: BoxDecoration(
                      color: AppPalette.mainPurpleColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Material(
                    color: AppPalette.transparentColor,
                    child: InkWell(
                        onTap: () {
                          if (isLastSlider) {
                            _goToHomePage(context);
                            _animationController?.forward();
                          } else {
                            _animateToNextPage(pageIndex);
                          }
                        },
                        borderRadius: BorderRadius.circular(15),
                        child: Center(
                          child: widget.isLoading
                              ? Icon(
                                  Icons.done,
                                  color: AppPalette.whiteColor,
                                  size: 32.h,
                                )
                              : Text(
                                  isLastSlider
                                      ? '${widget.loc?.introPageGetStartedButtonText}'
                                      : '${widget.loc?.introPageNextButtonText}',
                                  style: TextStyles.white16BoldMontserrat),
                        )),
                  ),
                );
              });
        });
  }

  int get _sliderCount => widget.introPageSlider.items.length;

  Stream<int> get _pageIndexStream => widget.introPageSlider.pageIndexStream;

  int? get _pageIndex => widget.introPageSlider.pageIndex;

  void _goToHomePage(BuildContext context) {
    widget.introPageSlider.triggerRouteToHomePage();
  }

  void _animateToNextPage(int pageIndex) {
    widget.introPageSlider.animateToNextPage(pageIndex + 1);
  }
}
