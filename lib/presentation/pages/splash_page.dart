part of pages;

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SplashPageState>(splashPageProvider, ((_, state) {
      state.when(
        initial: () => null,
        loading: () => null,
        error: () => context.go(Routes.errorPage),
        loaded: (isIntroPageSeen) {
          if (isIntroPageSeen == true) {
            context.go(Routes.feedPage);
          } else {
            context.go(Routes.introPage);
          }
        },
      );
    }));
    return const Scaffold(
      backgroundColor: AppPalette.mainPurpleColor,
      body: SplashThumbnail(),
    );
  }
}
