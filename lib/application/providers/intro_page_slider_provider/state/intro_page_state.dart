import 'package:fpdart/fpdart.dart' show none, Option;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/core/error/failure_result.dart' show FailureResult;
import '../../../../infastructure/core/utils/either.dart' show Unit, Either;

part 'intro_page_state.freezed.dart';

@freezed
class IntroPageState with _$IntroPageState {
  const IntroPageState._();

  const factory IntroPageState({
    required Option<Either<FailureResult, Unit>> failureOrSuccessOption,
    @Default(false) bool isLoading,
  }) = _IntroPageState;

  factory IntroPageState.initial() => IntroPageState(
        failureOrSuccessOption: none(),
      );
}
