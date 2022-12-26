import 'package:flutter/foundation.dart' show immutable;

@immutable
class DriftDatabaseException implements Exception {}

@immutable
class SharedPreferencesException implements Exception {}

@immutable
class LocalNotificationsException implements Exception {}

@immutable
class CouldNotLaunchUrlException implements Exception {}

@immutable
class NearbyPharmaciesException implements Exception {}

@immutable
class LocationPermissionException implements Exception {}

@immutable
class CurrentLocationException implements Exception {}
