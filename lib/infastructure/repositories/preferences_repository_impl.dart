import 'package:healsense/domain/core/error/exceptions.dart';
import 'package:healsense/domain/core/error/failure_result.dart';

import '../core/utils/either.dart';
import '../../domain/repositories/preferences_repository.dart';
import '../data_sources/local/preferences_data_source/preferences_data_source.dart';

class PreferencesRepositoryImpl implements PreferencesRepository {
  PreferencesRepositoryImpl(this._dataSource);

  final PreferencesDataSource _dataSource;

  @override
  Future<Either<FailureResult, Unit>> storeIntroPageSeen() async {
    try {
      await _dataSource.storeIntroPageSeen();
      return const Success(unit);
    } catch (_) {
      return Error(FailureResult(ex: SharedPreferencesException()));
    }
  }

  @override
  Future<Either<FailureResult, bool?>> get isIntroPageSeen async {
    try {
      final isIntroPageSeen = await _dataSource.isIntroPageSeen;
      return Success(isIntroPageSeen);
    } catch (_) {
      return Error(FailureResult(ex: SharedPreferencesException()));
    }
  }
}
