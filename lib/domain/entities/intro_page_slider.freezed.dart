// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intro_page_slider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IntroPageSlider {
  String get image => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntroPageSliderCopyWith<IntroPageSlider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroPageSliderCopyWith<$Res> {
  factory $IntroPageSliderCopyWith(
          IntroPageSlider value, $Res Function(IntroPageSlider) then) =
      _$IntroPageSliderCopyWithImpl<$Res, IntroPageSlider>;
  @useResult
  $Res call({String image, String? title, String? desc});
}

/// @nodoc
class _$IntroPageSliderCopyWithImpl<$Res, $Val extends IntroPageSlider>
    implements $IntroPageSliderCopyWith<$Res> {
  _$IntroPageSliderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? title = freezed,
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IntroPageSliderCopyWith<$Res>
    implements $IntroPageSliderCopyWith<$Res> {
  factory _$$_IntroPageSliderCopyWith(
          _$_IntroPageSlider value, $Res Function(_$_IntroPageSlider) then) =
      __$$_IntroPageSliderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String? title, String? desc});
}

/// @nodoc
class __$$_IntroPageSliderCopyWithImpl<$Res>
    extends _$IntroPageSliderCopyWithImpl<$Res, _$_IntroPageSlider>
    implements _$$_IntroPageSliderCopyWith<$Res> {
  __$$_IntroPageSliderCopyWithImpl(
      _$_IntroPageSlider _value, $Res Function(_$_IntroPageSlider) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? title = freezed,
    Object? desc = freezed,
  }) {
    return _then(_$_IntroPageSlider(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_IntroPageSlider implements _IntroPageSlider {
  const _$_IntroPageSlider(
      {required this.image, required this.title, required this.desc});

  @override
  final String image;
  @override
  final String? title;
  @override
  final String? desc;

  @override
  String toString() {
    return 'IntroPageSlider(image: $image, title: $title, desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntroPageSlider &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, title, desc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IntroPageSliderCopyWith<_$_IntroPageSlider> get copyWith =>
      __$$_IntroPageSliderCopyWithImpl<_$_IntroPageSlider>(this, _$identity);
}

abstract class _IntroPageSlider implements IntroPageSlider {
  const factory _IntroPageSlider(
      {required final String image,
      required final String? title,
      required final String? desc}) = _$_IntroPageSlider;

  @override
  String get image;
  @override
  String? get title;
  @override
  String? get desc;
  @override
  @JsonKey(ignore: true)
  _$$_IntroPageSliderCopyWith<_$_IntroPageSlider> get copyWith =>
      throw _privateConstructorUsedError;
}
