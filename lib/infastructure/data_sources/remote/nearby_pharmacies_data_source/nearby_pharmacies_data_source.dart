import 'package:geolocator/geolocator.dart';
import 'package:healsense/infastructure/models/nearby_pharmacies.dart';

abstract class NearbyPharmaciesDataSource {
  Future<NearbyPharmacies?> getNearbyPharmacies(Uri uri);

  Uri getNearbyPharmaciesUrl(Position? position);
}
