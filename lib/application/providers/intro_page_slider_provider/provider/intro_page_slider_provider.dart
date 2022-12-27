import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/application/providers/go_router_provider/provider/go_router_provider.dart';
import 'package:healsense/application/providers/intro_page_slider_provider/notifier/intro_page_state_notifier.dart';
import 'package:healsense/application/providers/intro_page_slider_provider/state/intro_page_state.dart';

import '../../../../infastructure/core/extensions/localization_extension.dart';
import '../../../../di/di.dart';

final introPageSliderProvider =
    StateNotifierProvider<IntroPageStateNotifier, IntroPageState>((ref) {
  final goRouter = ref.watch(goRouterProvider);
  final context = goRouter.routerDelegate.navigatorKey.currentContext;

  return IntroPageStateNotifier(
    preferencesRepository: ref.watch(
      preferencesRepositoryProvider,
    ),
    loc: context?.loc,
  );
});
