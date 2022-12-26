// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearby_pharmacies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NearbyPharmacies _$$_NearbyPharmaciesFromJson(Map<String, dynamic> json) =>
    _$_NearbyPharmacies(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NearbyPharmaciesToJson(_$_NearbyPharmacies instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => _$_Results(
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      name: json['name'] as String?,
      openingHours: json['openingHours'] == null
          ? null
          : OpeningHours.fromJson(json['openingHours'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'geometry': instance.geometry,
      'name': instance.name,
      'openingHours': instance.openingHours,
    };

_$_Geometry _$$_GeometryFromJson(Map<String, dynamic> json) => _$_Geometry(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeometryToJson(_$_Geometry instance) =>
    <String, dynamic>{
      'location': instance.location,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$_OpeningHours _$$_OpeningHoursFromJson(Map<String, dynamic> json) =>
    _$_OpeningHours(
      openNow: json['openNow'] as bool?,
    );

Map<String, dynamic> _$$_OpeningHoursToJson(_$_OpeningHours instance) =>
    <String, dynamic>{
      'openNow': instance.openNow,
    };
