import 'package:healsense/domain/core/error/failure_result.dart';

import '../../infastructure/core/constants/typedefs.dart';
import '../../infastructure/services/drift_service/drift_service.dart';
import '../../infastructure/core/utils/either.dart';

abstract class MedicinesRepository {
  Future<Either<FailureResult, List<MedicineData>?>> getMedicinesByDate(
      DateTime date);

  Future<Either<FailureResult, List<MedicineData>?>> get todayActiveMedicines;

  Future<Either<FailureResult, int?>> get todayActiveMedicinesCount;

  Future<Either<FailureResult, MedicineData?>> get todayLatestMedicine;

  Future<Either<FailureResult, Unit>> createMedicine(MedicineCompanion entity);

  Future<Either<FailureResult, int>> deleteMedicine(
      int? id, IsNotified? isNotified);
}
