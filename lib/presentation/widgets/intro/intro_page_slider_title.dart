part of widgets;

class IntroPageSliderTitle extends StatelessWidget {
  final String? _title;
  const IntroPageSliderTitle(
    this._title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Text(
        _title ?? '',
        style: TextStyles.black22BoldLineHeightMontserrat,
        textAlign: TextAlign.center,
      ),
    );
  }
}
