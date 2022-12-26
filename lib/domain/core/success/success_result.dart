import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_result.freezed.dart';

@freezed
class SuccessResult<E> with _$SuccessResult {
  const factory SuccessResult({
    required dynamic data,
    @Default({}) Map<String, dynamic> headers,
    int? statusCode,
  }) = _SuccessResult;
}
