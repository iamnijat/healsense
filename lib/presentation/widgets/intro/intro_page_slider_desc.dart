part of widgets;

class IntroPageSliderDesc extends StatelessWidget {
  final String? _desc;
  const IntroPageSliderDesc(
    this._desc, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Text(
        _desc ?? '',
        style: TextStyles.black16w500LineHeightMontserrat,
        textAlign: TextAlign.center,
      ),
    );
  }
}
