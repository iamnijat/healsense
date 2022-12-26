part of pages;

class IntroPage extends ConsumerStatefulWidget {
  const IntroPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IntroPageState();
}

class _IntroPageState extends ConsumerState<IntroPage> {
  @override
  Widget build(BuildContext context) {
    final introPageNotifier = ref.read(
      introPageSliderProvider.notifier,
    );
    final state = ref.watch(introPageSliderProvider);

    ref.listen<IntroPageState>(introPageSliderProvider, ((_, state) {
      state.failureOrSuccessOption.fold(() => {}, (either) {
        if (either.isError()) {
          showSnackbar(
            context,
            title: context.loc.errorSnackbarTitle,
            contentType: SimpleSnackbarContentType.error,
          );
        } else {
          context.go(Routes.feedPage);
        }
      });
    }));
    return Scaffold(
      backgroundColor: AppPalette.whiteColor,
      body: SafeArea(
        top: false,
        bottom: true,
        right: false,
        left: false,
        minimum: EdgeInsets.only(bottom: 20.h),
        maintainBottomViewPadding: true,
        child: PageView.builder(
            physics: const ClampingScrollPhysics(),
            controller: introPageNotifier.pageController,
            onPageChanged: introPageNotifier.onPageChanged,
            itemCount: introPageNotifier.items.length,
            itemBuilder: (ctx, index) => IntroPageSliderItem(
                  index: index,
                  introPageSlider: introPageNotifier,
                  state: state,
                  mounted: mounted,
                )),
      ),
    );
  }
}
