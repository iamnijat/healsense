part of widgets;

class VerticalSpacer extends StatelessWidget {
  final double _height;
  const VerticalSpacer(this._height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height.h,
    );
  }
}
