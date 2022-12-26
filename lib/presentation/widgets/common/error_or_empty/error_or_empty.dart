part of widgets;

class ErrorOrEmpty extends StatelessWidget {
  final Loc loc;
  const ErrorOrEmpty({
    super.key,
    required this.loc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 250.h,
          height: 250.h,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: svg_provider.Svg(
              AppAssets.errorOrEmptyImage,
            ),
          )),
        ),
        const VerticalSpacer(10),
        Text(
          loc?.errorOrEmptyTitle ?? '',
          textAlign: TextAlign.center,
          style: TextStyles.purple20BoldMontserrat,
        ),
        const VerticalSpacer(10),
        Text(
          loc?.errorOrEmptyDesc ?? '',
          textAlign: TextAlign.center,
          style: TextStyles.black16w500LineHeightMontserrat,
        ),
      ],
    );
  }
}
