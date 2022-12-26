part of widgets;

class CalendarActivityDismissibleLeftTransition extends StatelessWidget {
  const CalendarActivityDismissibleLeftTransition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 42.h,
            height: 42.h,
            decoration: BoxDecoration(
              color: AppPalette.redColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(
                Icons.delete_outline_rounded,
                color: AppPalette.whiteColor,
                size: 24.h,
              ),
            ),
          ),
        ]);
  }
}
