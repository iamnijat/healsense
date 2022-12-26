// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:healsense/domain/repositories/local_notifications_repository.dart'
    as _i9;
import 'package:healsense/domain/repositories/medicines_repository.dart'
    as _i15;
import 'package:healsense/domain/repositories/nearby_pharmacies_repository.dart'
    as _i19;
import 'package:healsense/domain/repositories/preferences_repository.dart'
    as _i24;
import 'package:healsense/infastructure/core/injectable_modules/http_injectable_module.dart'
    as _i26;
import 'package:healsense/infastructure/core/injectable_modules/shared_preferences_injectable_module.dart'
    as _i27;
import 'package:healsense/infastructure/data_sources/local/local_notifications_data_source/local_notifications_data_source.dart'
    as _i7;
import 'package:healsense/infastructure/data_sources/local/local_notifications_data_source/local_notifications_data_source_impl.dart'
    as _i8;
import 'package:healsense/infastructure/data_sources/local/medicines_data_source/medicines_data_source.dart'
    as _i13;
import 'package:healsense/infastructure/data_sources/local/medicines_data_source/medicines_data_source_impl.dart'
    as _i14;
import 'package:healsense/infastructure/data_sources/local/preferences_data_source/preferences_data_source.dart'
    as _i22;
import 'package:healsense/infastructure/data_sources/local/preferences_data_source/preferences_data_source_impl.dart'
    as _i23;
import 'package:healsense/infastructure/data_sources/remote/current_location_data_source/current_location_data_source.dart'
    as _i4;
import 'package:healsense/infastructure/data_sources/remote/current_location_data_source/current_location_data_source_impl.dart'
    as _i5;
import 'package:healsense/infastructure/data_sources/remote/location_permission_data_source/location_permission_data_source.dart'
    as _i11;
import 'package:healsense/infastructure/data_sources/remote/location_permission_data_source/location_permission_data_source_impl.dart'
    as _i12;
import 'package:healsense/infastructure/data_sources/remote/nearby_pharmacies_data_source/nearby_pharmacies_data_source.dart'
    as _i17;
import 'package:healsense/infastructure/data_sources/remote/nearby_pharmacies_data_source/nearby_pharmacies_data_source_impl.dart'
    as _i18;
import 'package:healsense/infastructure/repositories/local_notifications_repository_impl.dart'
    as _i10;
import 'package:healsense/infastructure/repositories/medicines_repository_impl.dart'
    as _i16;
import 'package:healsense/infastructure/repositories/nearby_pharmacies_repository_impl.dart'
    as _i20;
import 'package:healsense/infastructure/repositories/preferences_repository_impl.dart'
    as _i25;
import 'package:healsense/infastructure/services/drift_service/drift_service.dart'
    as _i6;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i21;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final httpInjectableModule = _$HttpInjectableModule();
  final sharedPreferencesInjectableModule =
      _$SharedPreferencesInjectableModule();
  gh.lazySingleton<_i3.Client>(() => httpInjectableModule.client);
  gh.lazySingleton<_i4.CurrentLocationDataSource>(
      () => _i5.CurrentLocationDataSourceImpl());
  gh.lazySingleton<_i6.DriftService>(() => _i6.DriftService());
  gh.lazySingleton<_i7.LocalNotificationsDataSource>(
      () => _i8.LocalNotificationsDataSourceImpl());
  gh.lazySingleton<_i9.LocalNotificationsRepository>(() =>
      _i10.LocalNotificationsRepositoryImpl(
          gh<_i7.LocalNotificationsDataSource>()));
  gh.lazySingleton<_i11.LocationPermissionDataSource>(
      () => _i12.LocationPermissionDataSourceImpl());
  gh.lazySingleton<_i13.MedicinesDataSource>(
      () => _i14.MedicinesDataSourceImpl(gh<_i6.DriftService>()));
  gh.lazySingleton<_i15.MedicinesRepository>(() => _i16.MedicinesRepositoryImpl(
        gh<_i13.MedicinesDataSource>(),
        gh<_i7.LocalNotificationsDataSource>(),
      ));
  gh.lazySingleton<_i17.NearbyPharmaciesDataSource>(
      () => _i18.NearbyPharmaciesDataSourceImpl(gh<_i3.Client>()));
  gh.lazySingleton<_i19.NearbyPharmaciesRepository>(
      () => _i20.NearbyPharmaciesRepositoryImpl(
            gh<_i4.CurrentLocationDataSource>(),
            gh<_i11.LocationPermissionDataSource>(),
            gh<_i17.NearbyPharmaciesDataSource>(),
          ));
  await gh.factoryAsync<_i21.SharedPreferences>(
    () => sharedPreferencesInjectableModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i22.PreferencesDataSource>(
      () => _i23.PreferencesDataSourceImpl(gh<_i21.SharedPreferences>()));
  gh.lazySingleton<_i24.PreferencesRepository>(
      () => _i25.PreferencesRepositoryImpl(gh<_i22.PreferencesDataSource>()));
  return getIt;
}

class _$HttpInjectableModule extends _i26.HttpInjectableModule {}

class _$SharedPreferencesInjectableModule
    extends _i27.SharedPreferencesInjectableModule {}
