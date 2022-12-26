// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_form_text_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MedicineFormTextField {
  String get value => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MedicineFormTextFieldCopyWith<MedicineFormTextField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineFormTextFieldCopyWith<$Res> {
  factory $MedicineFormTextFieldCopyWith(MedicineFormTextField value,
          $Res Function(MedicineFormTextField) then) =
      _$MedicineFormTextFieldCopyWithImpl<$Res, MedicineFormTextField>;
  @useResult
  $Res call({String value, bool isValid});
}

/// @nodoc
class _$MedicineFormTextFieldCopyWithImpl<$Res,
        $Val extends MedicineFormTextField>
    implements $MedicineFormTextFieldCopyWith<$Res> {
  _$MedicineFormTextFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicineFormTextFieldCopyWith<$Res>
    implements $MedicineFormTextFieldCopyWith<$Res> {
  factory _$$_MedicineFormTextFieldCopyWith(_$_MedicineFormTextField value,
          $Res Function(_$_MedicineFormTextField) then) =
      __$$_MedicineFormTextFieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, bool isValid});
}

/// @nodoc
class __$$_MedicineFormTextFieldCopyWithImpl<$Res>
    extends _$MedicineFormTextFieldCopyWithImpl<$Res, _$_MedicineFormTextField>
    implements _$$_MedicineFormTextFieldCopyWith<$Res> {
  __$$_MedicineFormTextFieldCopyWithImpl(_$_MedicineFormTextField _value,
      $Res Function(_$_MedicineFormTextField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? isValid = null,
  }) {
    return _then(_$_MedicineFormTextField(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MedicineFormTextField implements _MedicineFormTextField {
  const _$_MedicineFormTextField({this.value = '', this.isValid = false});

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'MedicineFormTextField(value: $value, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineFormTextField &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineFormTextFieldCopyWith<_$_MedicineFormTextField> get copyWith =>
      __$$_MedicineFormTextFieldCopyWithImpl<_$_MedicineFormTextField>(
          this, _$identity);
}

abstract class _MedicineFormTextField implements MedicineFormTextField {
  const factory _MedicineFormTextField(
      {final String value, final bool isValid}) = _$_MedicineFormTextField;

  @override
  String get value;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineFormTextFieldCopyWith<_$_MedicineFormTextField> get copyWith =>
      throw _privateConstructorUsedError;
}
