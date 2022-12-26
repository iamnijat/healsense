part of widgets;

class HorizontalSpacer extends StatelessWidget {
  final double _width;
  const HorizontalSpacer(this._width, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width.w,
    );
  }
}
