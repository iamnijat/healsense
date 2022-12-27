import 'package:fimber/fimber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/application/providers/splash_page_provider/state/splash_page_state.dart';
import 'package:healsense/domain/repositories/preferences_repository.dart';

import '../../../../infastructure/core/constants/durations.dart';

class SplashPageStateNotifier extends StateNotifier<SplashPageState> {
  final PreferencesRepository preferencesRepository;

  SplashPageStateNotifier({
    required this.preferencesRepository,
  }) : super(const SplashPageState.initial()) {
    checkRoute();
  }

  Future<void> checkRoute() async {
    state = const SplashPageState.loading();

    await _addDelay();

    final result = await preferencesRepository.isIntroPageSeen;

    result.when(error: (_) {
      state = const SplashPageState.error();
      Fimber.e('Error happened while checking the route');
    }, success: (isIntroPageSeen) {
      state = SplashPageState.loaded(isIntroPageSeen);
      Fimber.d('Successfully handled checking route');
    });
  }

  _addDelay() async => await Future.delayed(
        Durations.oneSecondDuration,
      );
}
