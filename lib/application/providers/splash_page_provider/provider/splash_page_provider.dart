import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/application/providers/splash_page_provider/state/splash_page_state.dart';
import '../../../../di/di.dart';
import '../notifier/splash_page_state_notifier.dart';

final splashPageProvider =
    StateNotifierProvider<SplashPageStateNotifier, SplashPageState>(
  (ref) => SplashPageStateNotifier(
    preferencesRepository: ref.watch(
      preferencesRepositoryProvider,
    ),
  ),
);
