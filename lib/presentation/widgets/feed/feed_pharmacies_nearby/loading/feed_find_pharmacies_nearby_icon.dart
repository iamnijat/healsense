part of widgets;

class FeedFindPharmaciesNearbyIcon extends StatefulWidget {
  final String icon;
  const FeedFindPharmaciesNearbyIcon({
    super.key,
    required this.icon,
  });

  @override
  State<FeedFindPharmaciesNearbyIcon> createState() =>
      _FeedFindPharmaciesNearbyIconState();
}

class _FeedFindPharmaciesNearbyIconState
    extends State<FeedFindPharmaciesNearbyIcon>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<Offset>? _animationOffset;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);

    _animationOffset = Tween(
      end: Offset.zero,
      begin: const Offset(0.1, 0.3),
    ).animate(_animationController!);
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animationOffset!,
      child: Container(
        width: 45.w,
        height: 45.h,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(widget.icon),
        )),
      ),
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
