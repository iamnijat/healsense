part of widgets;

class ShimmerLoadingIndicator extends StatelessWidget {
  const ShimmerLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mainGreyShimmer(context,
        child: MediaQueryRemovePadding(
            child: ListView.builder(
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: index > 0
                          ? EdgeInsets.only(
                              top: 12.h,
                            )
                          : EdgeInsets.zero,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: 120.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppPalette.mainGreyColor)),
                          const HorizontalSpacer(25),
                          Container(
                              height: 120.h,
                              width: 265.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppPalette.mainGreyColor)),
                        ],
                      ));
                })));
  }
}
