// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nearby_pharmacies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NearbyPharmacies _$NearbyPharmaciesFromJson(Map<String, dynamic> json) {
  return _NearbyPharmacies.fromJson(json);
}

/// @nodoc
mixin _$NearbyPharmacies {
  List<Results>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NearbyPharmaciesCopyWith<NearbyPharmacies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyPharmaciesCopyWith<$Res> {
  factory $NearbyPharmaciesCopyWith(
          NearbyPharmacies value, $Res Function(NearbyPharmacies) then) =
      _$NearbyPharmaciesCopyWithImpl<$Res, NearbyPharmacies>;
  @useResult
  $Res call({List<Results>? results});
}

/// @nodoc
class _$NearbyPharmaciesCopyWithImpl<$Res, $Val extends NearbyPharmacies>
    implements $NearbyPharmaciesCopyWith<$Res> {
  _$NearbyPharmaciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NearbyPharmaciesCopyWith<$Res>
    implements $NearbyPharmaciesCopyWith<$Res> {
  factory _$$_NearbyPharmaciesCopyWith(
          _$_NearbyPharmacies value, $Res Function(_$_NearbyPharmacies) then) =
      __$$_NearbyPharmaciesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Results>? results});
}

/// @nodoc
class __$$_NearbyPharmaciesCopyWithImpl<$Res>
    extends _$NearbyPharmaciesCopyWithImpl<$Res, _$_NearbyPharmacies>
    implements _$$_NearbyPharmaciesCopyWith<$Res> {
  __$$_NearbyPharmaciesCopyWithImpl(
      _$_NearbyPharmacies _value, $Res Function(_$_NearbyPharmacies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_NearbyPharmacies(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NearbyPharmacies implements _NearbyPharmacies {
  const _$_NearbyPharmacies({final List<Results>? results})
      : _results = results;

  factory _$_NearbyPharmacies.fromJson(Map<String, dynamic> json) =>
      _$$_NearbyPharmaciesFromJson(json);

  final List<Results>? _results;
  @override
  List<Results>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NearbyPharmacies(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NearbyPharmacies &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NearbyPharmaciesCopyWith<_$_NearbyPharmacies> get copyWith =>
      __$$_NearbyPharmaciesCopyWithImpl<_$_NearbyPharmacies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NearbyPharmaciesToJson(
      this,
    );
  }
}

abstract class _NearbyPharmacies implements NearbyPharmacies {
  const factory _NearbyPharmacies({final List<Results>? results}) =
      _$_NearbyPharmacies;

  factory _NearbyPharmacies.fromJson(Map<String, dynamic> json) =
      _$_NearbyPharmacies.fromJson;

  @override
  List<Results>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_NearbyPharmaciesCopyWith<_$_NearbyPharmacies> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  Geometry? get geometry => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  OpeningHours? get openingHours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call({Geometry? geometry, String? name, OpeningHours? openingHours});

  $GeometryCopyWith<$Res>? get geometry;
  $OpeningHoursCopyWith<$Res>? get openingHours;
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geometry = freezed,
    Object? name = freezed,
    Object? openingHours = freezed,
  }) {
    return _then(_value.copyWith(
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpeningHoursCopyWith<$Res>? get openingHours {
    if (_value.openingHours == null) {
      return null;
    }

    return $OpeningHoursCopyWith<$Res>(_value.openingHours!, (value) {
      return _then(_value.copyWith(openingHours: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultsCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$_ResultsCopyWith(
          _$_Results value, $Res Function(_$_Results) then) =
      __$$_ResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Geometry? geometry, String? name, OpeningHours? openingHours});

  @override
  $GeometryCopyWith<$Res>? get geometry;
  @override
  $OpeningHoursCopyWith<$Res>? get openingHours;
}

/// @nodoc
class __$$_ResultsCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$_Results>
    implements _$$_ResultsCopyWith<$Res> {
  __$$_ResultsCopyWithImpl(_$_Results _value, $Res Function(_$_Results) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geometry = freezed,
    Object? name = freezed,
    Object? openingHours = freezed,
  }) {
    return _then(_$_Results(
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: freezed == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as OpeningHours?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Results implements _Results {
  const _$_Results({this.geometry, this.name, this.openingHours});

  factory _$_Results.fromJson(Map<String, dynamic> json) =>
      _$$_ResultsFromJson(json);

  @override
  final Geometry? geometry;
  @override
  final String? name;
  @override
  final OpeningHours? openingHours;

  @override
  String toString() {
    return 'Results(geometry: $geometry, name: $name, openingHours: $openingHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Results &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, geometry, name, openingHours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      __$$_ResultsCopyWithImpl<_$_Results>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultsToJson(
      this,
    );
  }
}

abstract class _Results implements Results {
  const factory _Results(
      {final Geometry? geometry,
      final String? name,
      final OpeningHours? openingHours}) = _$_Results;

  factory _Results.fromJson(Map<String, dynamic> json) = _$_Results.fromJson;

  @override
  Geometry? get geometry;
  @override
  String? get name;
  @override
  OpeningHours? get openingHours;
  @override
  @JsonKey(ignore: true)
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      throw _privateConstructorUsedError;
}

Geometry _$GeometryFromJson(Map<String, dynamic> json) {
  return _Geometry.fromJson(json);
}

/// @nodoc
mixin _$Geometry {
  Location? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeometryCopyWith<Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryCopyWith<$Res> {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) then) =
      _$GeometryCopyWithImpl<$Res, Geometry>;
  @useResult
  $Res call({Location? location});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$GeometryCopyWithImpl<$Res, $Val extends Geometry>
    implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeometryCopyWith<$Res> implements $GeometryCopyWith<$Res> {
  factory _$$_GeometryCopyWith(
          _$_Geometry value, $Res Function(_$_Geometry) then) =
      __$$_GeometryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Location? location});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_GeometryCopyWithImpl<$Res>
    extends _$GeometryCopyWithImpl<$Res, _$_Geometry>
    implements _$$_GeometryCopyWith<$Res> {
  __$$_GeometryCopyWithImpl(
      _$_Geometry _value, $Res Function(_$_Geometry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$_Geometry(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Geometry implements _Geometry {
  const _$_Geometry({this.location});

  factory _$_Geometry.fromJson(Map<String, dynamic> json) =>
      _$$_GeometryFromJson(json);

  @override
  final Location? location;

  @override
  String toString() {
    return 'Geometry(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Geometry &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeometryCopyWith<_$_Geometry> get copyWith =>
      __$$_GeometryCopyWithImpl<_$_Geometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeometryToJson(
      this,
    );
  }
}

abstract class _Geometry implements Geometry {
  const factory _Geometry({final Location? location}) = _$_Geometry;

  factory _Geometry.fromJson(Map<String, dynamic> json) = _$_Geometry.fromJson;

  @override
  Location? get location;
  @override
  @JsonKey(ignore: true)
  _$$_GeometryCopyWith<_$_Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_Location(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location({this.lat, this.lng});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;

  @override
  String toString() {
    return 'Location(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location({final double? lat, final double? lng}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  double? get lat;
  @override
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) {
  return _OpeningHours.fromJson(json);
}

/// @nodoc
mixin _$OpeningHours {
  bool? get openNow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpeningHoursCopyWith<OpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursCopyWith<$Res> {
  factory $OpeningHoursCopyWith(
          OpeningHours value, $Res Function(OpeningHours) then) =
      _$OpeningHoursCopyWithImpl<$Res, OpeningHours>;
  @useResult
  $Res call({bool? openNow});
}

/// @nodoc
class _$OpeningHoursCopyWithImpl<$Res, $Val extends OpeningHours>
    implements $OpeningHoursCopyWith<$Res> {
  _$OpeningHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openNow = freezed,
  }) {
    return _then(_value.copyWith(
      openNow: freezed == openNow
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpeningHoursCopyWith<$Res>
    implements $OpeningHoursCopyWith<$Res> {
  factory _$$_OpeningHoursCopyWith(
          _$_OpeningHours value, $Res Function(_$_OpeningHours) then) =
      __$$_OpeningHoursCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? openNow});
}

/// @nodoc
class __$$_OpeningHoursCopyWithImpl<$Res>
    extends _$OpeningHoursCopyWithImpl<$Res, _$_OpeningHours>
    implements _$$_OpeningHoursCopyWith<$Res> {
  __$$_OpeningHoursCopyWithImpl(
      _$_OpeningHours _value, $Res Function(_$_OpeningHours) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openNow = freezed,
  }) {
    return _then(_$_OpeningHours(
      openNow: freezed == openNow
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpeningHours implements _OpeningHours {
  const _$_OpeningHours({this.openNow});

  factory _$_OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$$_OpeningHoursFromJson(json);

  @override
  final bool? openNow;

  @override
  String toString() {
    return 'OpeningHours(openNow: $openNow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpeningHours &&
            (identical(other.openNow, openNow) || other.openNow == openNow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, openNow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpeningHoursCopyWith<_$_OpeningHours> get copyWith =>
      __$$_OpeningHoursCopyWithImpl<_$_OpeningHours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpeningHoursToJson(
      this,
    );
  }
}

abstract class _OpeningHours implements OpeningHours {
  const factory _OpeningHours({final bool? openNow}) = _$_OpeningHours;

  factory _OpeningHours.fromJson(Map<String, dynamic> json) =
      _$_OpeningHours.fromJson;

  @override
  bool? get openNow;
  @override
  @JsonKey(ignore: true)
  _$$_OpeningHoursCopyWith<_$_OpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}
