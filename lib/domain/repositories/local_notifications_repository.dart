import 'package:healsense/domain/core/error/failure_result.dart';

import '../../infastructure/core/utils/either.dart';

abstract class LocalNotificationsRepository {
  Future<Either<FailureResult, Unit>> initializeNotification();
}
