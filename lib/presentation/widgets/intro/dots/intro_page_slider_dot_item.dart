part of widgets;

class IntroPageSliderDotItem extends StatelessWidget {
  final int _index;
  final bool _isActive;
  const IntroPageSliderDotItem(this._index, this._isActive, {super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Durations.twoHundredMillisecondsDuration,
      margin: _innerMargin,
      height: 8.h,
      width: _dotWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: _dotColor,
      ),
    );
  }

  double? get _dotWidth => _isActive ? 17.w : 9.w;

  EdgeInsets get _innerMargin =>
      _index == 0 ? EdgeInsets.zero : EdgeInsets.only(left: 6.w);

  Color? get _dotColor =>
      _isActive ? AppPalette.mainPurpleColor : AppPalette.mainGrayColor;
}
