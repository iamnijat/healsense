import 'package:healsense/domain/core/error/exceptions.dart';
import 'package:healsense/domain/core/error/failure_result.dart';
import 'package:healsense/domain/repositories/local_notifications_repository.dart';
import 'package:healsense/infastructure/data_sources/local/local_notifications_data_source/local_notifications_data_source.dart';

import '../core/utils/either.dart';

class LocalNotificationsRepositoryImpl implements LocalNotificationsRepository {
  LocalNotificationsRepositoryImpl(this._dataSource);

  final LocalNotificationsDataSource _dataSource;

  @override
  Future<Either<FailureResult, Unit>> initializeNotification() async {
    try {
      await _dataSource.initializeNotification();
      return const Success(unit);
    } catch (_) {
      return Error(FailureResult(ex: LocalNotificationsException()));
    }
  }
}
