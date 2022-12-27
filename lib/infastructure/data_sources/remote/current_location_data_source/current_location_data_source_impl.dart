import 'package:geolocator/geolocator.dart';

import 'current_location_data_source.dart';

class CurrentLocationDataSourceImpl implements CurrentLocationDataSource {
  @override
  Future<Position?> getCurrentPosition({
    required LocationAccuracy desiredAccuracy,
  }) async {
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: desiredAccuracy,
    );
  }
}
