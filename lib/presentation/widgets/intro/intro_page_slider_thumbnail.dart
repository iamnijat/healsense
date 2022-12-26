part of widgets;

class IntroPageSliderThumbnail extends StatelessWidget {
  final String _image;

  const IntroPageSliderThumbnail(
    this._image, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 120.h,
      child: SizedBox(
        height: 450.h,
        width: 310.w,
        child: SvgPicture.asset(_image),
      ),
    );
  }
}
