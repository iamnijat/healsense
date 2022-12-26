part of widgets;

class JumpingDotsIndicator extends StatelessWidget {
  const JumpingDotsIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const JumpingDots(
      color: AppPalette.whiteColor,
      radius: 4.5,
      numberOfDots: 3,
      innerPadding: 3,
      animationDuration: Durations.twoHundredMillisecondsDuration,
    );
  }
}
