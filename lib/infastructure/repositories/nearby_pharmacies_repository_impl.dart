import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:healsense/domain/core/error/failure_result.dart';
import 'package:healsense/infastructure/core/utils/either.dart';
import 'package:healsense/infastructure/data_sources/remote/current_location_data_source/current_location_data_source.dart';
import 'package:healsense/infastructure/data_sources/remote/location_permission_data_source/location_permission_data_source.dart';
import 'package:healsense/infastructure/data_sources/remote/nearby_pharmacies_data_source/nearby_pharmacies_data_source.dart';
import 'package:healsense/infastructure/models/nearby_pharmacies.dart';

import '../../domain/core/error/exceptions.dart';
import '../../domain/repositories/nearby_pharmacies_repository.dart';

class NearbyPharmaciesRepositoryImpl implements NearbyPharmaciesRepository {
  NearbyPharmaciesRepositoryImpl(
    this._currentLocation,
    this._locationPermission,
    this._nearbyPharmacies,
  );

  final CurrentLocationDataSource _currentLocation;
  final LocationPermissionDataSource _locationPermission;
  final NearbyPharmaciesDataSource _nearbyPharmacies;

  @override
  Future<Either<FailureResult, NearbyPharmacies?>> getNearbyPharmacies() async {
    try {
      await _getLocationPermission();

      final position = await _getCurrentLocation();

      final uri = _nearbyPharmacies.getNearbyPharmaciesUrl(position);

      final nearbyPharmacies = await _getNearbyPharmacies(uri);

      return Success(nearbyPharmacies);
    } on LocationPermissionException catch (e) {
      return Error(FailureResult(ex: e));
    } on CurrentLocationException catch (e) {
      return Error(FailureResult(ex: e));
    } on NearbyPharmaciesException catch (e) {
      return Error(FailureResult(ex: e));
    } on SocketException catch (e) {
      return Error(FailureResult(ex: e));
    } catch (_) {
      return Error(FailureResult(ex: NearbyPharmaciesException()));
    }
  }

  Future<void> _getLocationPermission() async {
    try {
      final hasPermission = await _locationPermission.hasPermission;

      if (!hasPermission) throw LocationPermissionException();
    } catch (_) {
      rethrow;
    }
  }

  Future<Position?> _getCurrentLocation() async {
    try {
      final position = await _currentLocation.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      if (position == null) throw CurrentLocationException();

      return position;
    } catch (_) {
      rethrow;
    }
  }

  Future<NearbyPharmacies?> _getNearbyPharmacies(Uri uri) async {
    try {
      final nearbyPharmacies = await _nearbyPharmacies.getNearbyPharmacies(
        uri,
      );

      if (nearbyPharmacies == null) throw NearbyPharmaciesException();

      return nearbyPharmacies;
    } catch (_) {
      rethrow;
    }
  }
}
