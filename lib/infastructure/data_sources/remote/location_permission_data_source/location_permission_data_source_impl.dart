import 'package:geolocator/geolocator.dart';

import 'location_permission_data_source.dart';

class LocationPermissionDataSourceImpl implements LocationPermissionDataSource {
  @override
  Future<bool> get hasPermission async {
    bool? serviceEnabled;
    LocationPermission? permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) return false;

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) return false;
    }

    if (permission == LocationPermission.deniedForever) return false;

    return true;
  }
}
