import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_result.freezed.dart';

@freezed
class FailureResult<E> with _$FailureResult {
  const factory FailureResult({
    E? error,
    required Exception ex,
    @Default(ErrorType.local) ErrorType type,
    @Default({}) Map<String, dynamic> headers,
    int? statusCode,
    StackTrace? stackTrace,
  }) = _FailureResult;
}

enum ErrorType {
  local,
  remote,
}
