import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

import 'current_location_data_source.dart';

@LazySingleton(as: CurrentLocationDataSource)
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
