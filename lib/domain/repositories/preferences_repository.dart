import 'package:healsense/domain/core/error/failure_result.dart';

import '../../infastructure/core/utils/either.dart';

abstract class PreferencesRepository {
  Future<Either<FailureResult, Unit>> storeIntroPageSeen();

  Future<Either<FailureResult, bool?>> get isIntroPageSeen;
}
