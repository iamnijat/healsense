// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intro_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IntroPageState {
  Option<Either<FailureResult, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntroPageStateCopyWith<IntroPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroPageStateCopyWith<$Res> {
  factory $IntroPageStateCopyWith(
          IntroPageState value, $Res Function(IntroPageState) then) =
      _$IntroPageStateCopyWithImpl<$Res, IntroPageState>;
  @useResult
  $Res call(
      {Option<Either<FailureResult, Unit>> failureOrSuccessOption,
      bool isLoading});
}

/// @nodoc
class _$IntroPageStateCopyWithImpl<$Res, $Val extends IntroPageState>
    implements $IntroPageStateCopyWith<$Res> {
  _$IntroPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSuccessOption = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FailureResult, Unit>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IntroPageStateCopyWith<$Res>
    implements $IntroPageStateCopyWith<$Res> {
  factory _$$_IntroPageStateCopyWith(
          _$_IntroPageState value, $Res Function(_$_IntroPageState) then) =
      __$$_IntroPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<FailureResult, Unit>> failureOrSuccessOption,
      bool isLoading});
}

/// @nodoc
class __$$_IntroPageStateCopyWithImpl<$Res>
    extends _$IntroPageStateCopyWithImpl<$Res, _$_IntroPageState>
    implements _$$_IntroPageStateCopyWith<$Res> {
  __$$_IntroPageStateCopyWithImpl(
      _$_IntroPageState _value, $Res Function(_$_IntroPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSuccessOption = null,
    Object? isLoading = null,
  }) {
    return _then(_$_IntroPageState(
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FailureResult, Unit>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IntroPageState extends _IntroPageState {
  const _$_IntroPageState(
      {required this.failureOrSuccessOption, this.isLoading = false})
      : super._();

  @override
  final Option<Either<FailureResult, Unit>> failureOrSuccessOption;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'IntroPageState(failureOrSuccessOption: $failureOrSuccessOption, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntroPageState &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, failureOrSuccessOption, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IntroPageStateCopyWith<_$_IntroPageState> get copyWith =>
      __$$_IntroPageStateCopyWithImpl<_$_IntroPageState>(this, _$identity);
}

abstract class _IntroPageState extends IntroPageState {
  const factory _IntroPageState(
      {required final Option<Either<FailureResult, Unit>>
          failureOrSuccessOption,
      final bool isLoading}) = _$_IntroPageState;
  const _IntroPageState._() : super._();

  @override
  Option<Either<FailureResult, Unit>> get failureOrSuccessOption;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_IntroPageStateCopyWith<_$_IntroPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
