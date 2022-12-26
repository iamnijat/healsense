part of widgets;

class SplashThumbnail extends StatelessWidget {
  const SplashThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.5, end: 1.0),
            duration: Durations.oneSecondDuration,
            child: Container(
              width: 320.h,
              height: 320.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: svg_provider.Svg(AppAssets.splashThumbnail),
              )),
            ),
            builder: (context, value, child) {
              return Transform.scale(
                scale: value * 1.2,
                child: child,
              );
            }));
  }
}
