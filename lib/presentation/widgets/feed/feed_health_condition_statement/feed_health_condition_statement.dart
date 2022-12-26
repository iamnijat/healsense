part of widgets;

class FeedHealthConditionStatement extends StatelessWidget {
  final Loc loc;
  const FeedHealthConditionStatement({
    super.key,
    required this.loc,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          right: 290.w,
          bottom: -35.h,
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 1.0, end: 0.0),
            duration: Durations.sixHundredMillisecondsDuration,
            builder: (context, value, child) {
              return Transform.translate(
                offset: Offset(0.0, -100 * value),
                child: child,
              );
            },
            child: Container(
              width: 200.h,
              height: 200.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: svg_provider.Svg(AppAssets.treePotImage),
              )),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 70.w),
          child: SizedBox(
            width: 200.w,
            child: Text(
              loc?.feedPageHealthConditionStatementText ?? '',
              textAlign: TextAlign.center,
              style: TextStyles.black26BoldLineHeightMontserrat,
            ),
          ),
        ),
      ],
    );
  }
}
