part of widgets;

class RemindersBackButton extends StatelessWidget {
  const RemindersBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: AppPalette.blackColor,
        size: 27.h,
      ),
      onPressed: () {
        context.pop();
      },
    );
  }
}
