import 'package:healsense/infastructure/core/constants/typedefs.dart';
import 'package:healsense/infastructure/core/utils/date_format_util.dart';
import 'package:healsense/infastructure/core/utils/either.dart';
import 'package:healsense/domain/core/error/failure_result.dart';
import 'package:healsense/infastructure/data_sources/local/local_notifications_data_source/local_notifications_data_source.dart';
import 'package:healsense/infastructure/data_sources/local/medicines_data_source/medicines_data_source.dart';

import '../../domain/core/error/exceptions.dart';
import '../../domain/repositories/medicines_repository.dart';
import '../services/drift_service/drift_service.dart';

class MedicinesRepositoryImpl implements MedicinesRepository {
  MedicinesRepositoryImpl(
    this._medicinesDataSource,
    this._localNotificationsDataSource,
  );

  final MedicinesDataSource _medicinesDataSource;
  final LocalNotificationsDataSource _localNotificationsDataSource;

  @override
  Future<Either<FailureResult, Unit>> createMedicine(
    MedicineCompanion entity,
  ) async {
    try {
      final id = await _medicinesDataSource.createMedicine(entity);

      final dateTime = DateFormatUtil.combineDateAndTime(
        entity.date.value,
        entity.time.value,
      );

      final isNotified = entity.isNotified.value;

      if (isNotified) {
        await _localNotificationsDataSource.scheduleNotification(
          id: id,
          dateTime: dateTime,
          title: entity.name.value,
          amount: entity.amount.value,
        );
      }

      return const Success(unit);
    } catch (_) {
      return Error(FailureResult(ex: DriftDatabaseException()));
    }
  }

  @override
  Future<Either<FailureResult, int>> deleteMedicine(
    int? id,
    IsNotified? isNotified,
  ) async {
    try {
      final deletedId = await _medicinesDataSource.deleteMedicine(
        id!,
      );

      if (isNotified == true) {
        _localNotificationsDataSource.cancelNotification(
          id,
        );
      }

      return Success(deletedId);
    } catch (_) {
      return Error(FailureResult(ex: DriftDatabaseException()));
    }
  }

  @override
  Future<Either<FailureResult, int?>> get todayActiveMedicinesCount async {
    try {
      final data = await _medicinesDataSource.todayActiveMedicines;
      return Success(data?.length);
    } catch (_) {
      return Error(FailureResult(ex: DriftDatabaseException()));
    }
  }

  @override
  Future<Either<FailureResult, List<MedicineData>?>>
      get todayActiveMedicines async {
    try {
      final data = await _medicinesDataSource.todayActiveMedicines;

      return Success(data);
    } catch (_) {
      return Error(FailureResult(ex: DriftDatabaseException()));
    }
  }

  @override
  Future<Either<FailureResult, MedicineData?>> get todayLatestMedicine async {
    try {
      final data = await _medicinesDataSource.todayActiveMedicines;

      return Success(data?[0]);
    } catch (_) {
      return Error(FailureResult(ex: DriftDatabaseException()));
    }
  }

  @override
  Future<Either<FailureResult, List<MedicineData>?>> getMedicinesByDate(
      DateTime date) async {
    try {
      final data = await _medicinesDataSource.getMedicinesByDate(
        date,
      );
      return Success(data);
    } catch (_) {
      return Error(FailureResult(ex: DriftDatabaseException()));
    }
  }
}
