// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_form_datetime_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MedicineFormDateTimeField {
  DateTime? get value => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MedicineFormDateTimeFieldCopyWith<MedicineFormDateTimeField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineFormDateTimeFieldCopyWith<$Res> {
  factory $MedicineFormDateTimeFieldCopyWith(MedicineFormDateTimeField value,
          $Res Function(MedicineFormDateTimeField) then) =
      _$MedicineFormDateTimeFieldCopyWithImpl<$Res, MedicineFormDateTimeField>;
  @useResult
  $Res call({DateTime? value, bool isValid});
}

/// @nodoc
class _$MedicineFormDateTimeFieldCopyWithImpl<$Res,
        $Val extends MedicineFormDateTimeField>
    implements $MedicineFormDateTimeFieldCopyWith<$Res> {
  _$MedicineFormDateTimeFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicineFormDateTimeFieldCopyWith<$Res>
    implements $MedicineFormDateTimeFieldCopyWith<$Res> {
  factory _$$_MedicineFormDateTimeFieldCopyWith(
          _$_MedicineFormDateTimeField value,
          $Res Function(_$_MedicineFormDateTimeField) then) =
      __$$_MedicineFormDateTimeFieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? value, bool isValid});
}

/// @nodoc
class __$$_MedicineFormDateTimeFieldCopyWithImpl<$Res>
    extends _$MedicineFormDateTimeFieldCopyWithImpl<$Res,
        _$_MedicineFormDateTimeField>
    implements _$$_MedicineFormDateTimeFieldCopyWith<$Res> {
  __$$_MedicineFormDateTimeFieldCopyWithImpl(
      _$_MedicineFormDateTimeField _value,
      $Res Function(_$_MedicineFormDateTimeField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? isValid = null,
  }) {
    return _then(_$_MedicineFormDateTimeField(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MedicineFormDateTimeField implements _MedicineFormDateTimeField {
  const _$_MedicineFormDateTimeField({this.value, this.isValid = false});

  @override
  final DateTime? value;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'MedicineFormDateTimeField(value: $value, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineFormDateTimeField &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineFormDateTimeFieldCopyWith<_$_MedicineFormDateTimeField>
      get copyWith => __$$_MedicineFormDateTimeFieldCopyWithImpl<
          _$_MedicineFormDateTimeField>(this, _$identity);
}

abstract class _MedicineFormDateTimeField implements MedicineFormDateTimeField {
  const factory _MedicineFormDateTimeField(
      {final DateTime? value,
      final bool isValid}) = _$_MedicineFormDateTimeField;

  @override
  DateTime? get value;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineFormDateTimeFieldCopyWith<_$_MedicineFormDateTimeField>
      get copyWith => throw _privateConstructorUsedError;
}
