import 'package:freezed_annotation/freezed_annotation.dart';

part 'nearby_pharmacies.freezed.dart';
part 'nearby_pharmacies.g.dart';

@freezed
class NearbyPharmacies with _$NearbyPharmacies {
  const factory NearbyPharmacies({
    List<Results>? results,
  }) = _NearbyPharmacies;

  factory NearbyPharmacies.fromJson(Map<String, dynamic> json) =>
      _$NearbyPharmaciesFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    Geometry? geometry,
    String? name,
    OpeningHours? openingHours,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    Location? location,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    double? lat,
    double? lng,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class OpeningHours with _$OpeningHours {
  const factory OpeningHours({
    bool? openNow,
  }) = _OpeningHours;

  factory OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursFromJson(json);
}
