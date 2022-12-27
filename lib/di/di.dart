import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/domain/repositories/local_notifications_repository.dart';
import 'package:healsense/domain/repositories/medicines_repository.dart';
import 'package:healsense/domain/repositories/nearby_pharmacies_repository.dart';
import 'package:healsense/domain/repositories/preferences_repository.dart';
import 'package:healsense/infastructure/data_sources/local/local_notifications_data_source/local_notifications_data_source.dart';
import 'package:healsense/infastructure/data_sources/local/local_notifications_data_source/local_notifications_data_source_impl.dart';
import 'package:healsense/infastructure/data_sources/local/medicines_data_source/medicines_data_source.dart';
import 'package:healsense/infastructure/data_sources/local/medicines_data_source/medicines_data_source_impl.dart';
import 'package:healsense/infastructure/data_sources/local/preferences_data_source/preferences_data_source.dart';
import 'package:healsense/infastructure/data_sources/local/preferences_data_source/preferences_data_source_impl.dart';
import 'package:healsense/infastructure/data_sources/remote/current_location_data_source/current_location_data_source.dart';
import 'package:healsense/infastructure/data_sources/remote/current_location_data_source/current_location_data_source_impl.dart';
import 'package:healsense/infastructure/data_sources/remote/location_permission_data_source/location_permission_data_source.dart';
import 'package:healsense/infastructure/data_sources/remote/location_permission_data_source/location_permission_data_source_impl.dart';
import 'package:healsense/infastructure/data_sources/remote/nearby_pharmacies_data_source/nearby_pharmacies_data_source.dart';
import 'package:healsense/infastructure/data_sources/remote/nearby_pharmacies_data_source/nearby_pharmacies_data_source_impl.dart';
import 'package:healsense/infastructure/repositories/local_notifications_repository_impl.dart';
import 'package:healsense/infastructure/repositories/medicines_repository_impl.dart';
import 'package:healsense/infastructure/repositories/nearby_pharmacies_repository_impl.dart';
import 'package:healsense/infastructure/repositories/preferences_repository_impl.dart';
import 'package:healsense/infastructure/services/drift_service/drift_service.dart';
import 'package:http/http.dart' show Client;
import 'package:riverpod_annotation/riverpod_annotation.dart';

final httpClientProvider = Provider<Client>((_) {
  return Client();
});

final driftServiceProvider = Provider<DriftService>((_) {
  return DriftService();
});

final localNotificationsDataSourceProvider =
    Provider<LocalNotificationsDataSource>((_) {
  return LocalNotificationsDataSourceImpl();
});

final medicinesDataSourceProvider = Provider<MedicinesDataSource>((
  ref,
) {
  return MedicinesDataSourceImpl(
    ref.watch(driftServiceProvider),
  );
});

final preferencesDataSourceProvider = Provider<PreferencesDataSource>(
  (_) {
    return PreferencesDataSourceImpl();
  },
);

final currentLocationDataSourceProvider = Provider<CurrentLocationDataSource>(
  (_) {
    return CurrentLocationDataSourceImpl();
  },
);

final locationPermissionDataSourceProvider =
    Provider<LocationPermissionDataSource>(
  (_) {
    return LocationPermissionDataSourceImpl();
  },
);

final nearbyPharmaciesDataSourceProvider = Provider<NearbyPharmaciesDataSource>(
  (ref) {
    return NearbyPharmaciesDataSourceImpl(
      ref.watch(httpClientProvider),
    );
  },
);

final localNotificationsRepositoryProvider =
    Provider<LocalNotificationsRepository>(
  (ref) {
    return LocalNotificationsRepositoryImpl(
      ref.watch(
        localNotificationsDataSourceProvider,
      ),
    );
  },
);

final medicinesRepositoryProvider = Provider<MedicinesRepository>(
  (ref) {
    return MedicinesRepositoryImpl(
      ref.watch(
        medicinesDataSourceProvider,
      ),
      ref.watch(
        localNotificationsDataSourceProvider,
      ),
    );
  },
);

final nearbyPharmaciesRepositoryProvider = Provider<NearbyPharmaciesRepository>(
  (ref) {
    return NearbyPharmaciesRepositoryImpl(
      ref.watch(
        currentLocationDataSourceProvider,
      ),
      ref.watch(
        locationPermissionDataSourceProvider,
      ),
      ref.watch(
        nearbyPharmaciesDataSourceProvider,
      ),
    );
  },
);

final preferencesRepositoryProvider = Provider<PreferencesRepository>(
  (ref) {
    return PreferencesRepositoryImpl(
      ref.watch(
        preferencesDataSourceProvider,
      ),
    );
  },
);
