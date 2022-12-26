part of widgets;

class CalendarThumbnail extends StatelessWidget {
  const CalendarThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: Tween(begin: 1.0, end: 0.0),
        duration: Durations.sixHundredMillisecondsDuration,
        builder: (context, value, child) {
          return Transform.translate(
            offset: Offset(
              50 * value,
              0.0,
            ),
            child: child,
          );
        },
        child: Container(
          width: context.width,
          height: 290.h,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          padding: EdgeInsets.all(20.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: AppPalette.lightPurpleColor,
          ),
          child: SizedBox(
            height: 280.h,
            width: 250.w,
            child: SvgPicture.asset(
              AppAssets.calendarThumbnail,
            ),
          ),
        ));
  }
}
