part of widgets;

class MediaQueryRemovePadding extends StatelessWidget {
  final Widget child;
  const MediaQueryRemovePadding({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        removeLeft: true,
        removeRight: true,
        context: context,
        removeTop: true,
        removeBottom: true,
        child: child);
  }
}
