import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_page_state.freezed.dart';

@freezed
class SplashPageState with _$SplashPageState {
  const factory SplashPageState.initial() = _SplashPageInitial;
  const factory SplashPageState.loading() = _SplashPageLoading;
  const factory SplashPageState.error() = _SplashPageError;
  const factory SplashPageState.loaded(bool? isIntroPageSeen) =
      _SplashPageLoaded;
}
