import 'package:healsense/domain/core/error/failure_result.dart';

import '../../infastructure/core/utils/either.dart';
import '../../infastructure/models/nearby_pharmacies.dart';

abstract class NearbyPharmaciesRepository {
  Future<Either<FailureResult, NearbyPharmacies?>> getNearbyPharmacies();
}
