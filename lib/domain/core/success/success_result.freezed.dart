// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SuccessResult<E> {
  dynamic get data => throw _privateConstructorUsedError;
  Map<String, dynamic> get headers => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuccessResultCopyWith<E, SuccessResult<E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessResultCopyWith<E, $Res> {
  factory $SuccessResultCopyWith(
          SuccessResult<E> value, $Res Function(SuccessResult<E>) then) =
      _$SuccessResultCopyWithImpl<E, $Res, SuccessResult<E>>;
  @useResult
  $Res call({dynamic data, Map<String, dynamic> headers, int? statusCode});
}

/// @nodoc
class _$SuccessResultCopyWithImpl<E, $Res, $Val extends SuccessResult<E>>
    implements $SuccessResultCopyWith<E, $Res> {
  _$SuccessResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? headers = null,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SuccessResultCopyWith<E, $Res>
    implements $SuccessResultCopyWith<E, $Res> {
  factory _$$_SuccessResultCopyWith(
          _$_SuccessResult<E> value, $Res Function(_$_SuccessResult<E>) then) =
      __$$_SuccessResultCopyWithImpl<E, $Res>;
  @override
  @useResult
  $Res call({dynamic data, Map<String, dynamic> headers, int? statusCode});
}

/// @nodoc
class __$$_SuccessResultCopyWithImpl<E, $Res>
    extends _$SuccessResultCopyWithImpl<E, $Res, _$_SuccessResult<E>>
    implements _$$_SuccessResultCopyWith<E, $Res> {
  __$$_SuccessResultCopyWithImpl(
      _$_SuccessResult<E> _value, $Res Function(_$_SuccessResult<E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? headers = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$_SuccessResult<E>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SuccessResult<E> implements _SuccessResult<E> {
  const _$_SuccessResult(
      {required this.data,
      final Map<String, dynamic> headers = const {},
      this.statusCode})
      : _headers = headers;

  @override
  final dynamic data;
  final Map<String, dynamic> _headers;
  @override
  @JsonKey()
  Map<String, dynamic> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  final int? statusCode;

  @override
  String toString() {
    return 'SuccessResult<$E>(data: $data, headers: $headers, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessResult<E> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(_headers),
      statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessResultCopyWith<E, _$_SuccessResult<E>> get copyWith =>
      __$$_SuccessResultCopyWithImpl<E, _$_SuccessResult<E>>(this, _$identity);
}

abstract class _SuccessResult<E> implements SuccessResult<E> {
  const factory _SuccessResult(
      {required final dynamic data,
      final Map<String, dynamic> headers,
      final int? statusCode}) = _$_SuccessResult<E>;

  @override
  dynamic get data;
  @override
  Map<String, dynamic> get headers;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessResultCopyWith<E, _$_SuccessResult<E>> get copyWith =>
      throw _privateConstructorUsedError;
}
