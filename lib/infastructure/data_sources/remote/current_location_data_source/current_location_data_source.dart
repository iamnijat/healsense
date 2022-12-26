import 'package:geolocator/geolocator.dart';

abstract class CurrentLocationDataSource {
  Future<Position?> getCurrentPosition({
    required LocationAccuracy desiredAccuracy,
  });
}
