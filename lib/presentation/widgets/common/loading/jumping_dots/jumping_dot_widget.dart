part of jumping_dot;

class DotWidget extends StatelessWidget {
  final Color? color;
  final double? radius;

  const DotWidget({
    Key? key,
    required this.color,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      height: radius,
      width: radius,
    );
  }
}
