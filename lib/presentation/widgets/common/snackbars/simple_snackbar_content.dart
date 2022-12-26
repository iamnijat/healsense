part of widgets;

class SimpleSnackbarContent extends StatelessWidget {
  final String title;
  final SimpleSnackbarContentType contentType;
  const SimpleSnackbarContent({
    super.key,
    required this.title,
    required this.contentType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        color: AppPalette.whiteColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 14,
            spreadRadius: 2,
            color: Colors.black12,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.all(7.h),
            decoration: BoxDecoration(
              color: contentType.color,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: SimpleSnackbarIcon.icon(
              contentType,
              size: 16.h,
            ),
          ),
          const HorizontalSpacer(10),
          Text(
            title,
            style: TextStyles.black14BoldMontserrat,
          )
        ]),
      ),
    );
  }
}
