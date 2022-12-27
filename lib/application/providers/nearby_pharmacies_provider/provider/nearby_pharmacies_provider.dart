import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/application/providers/nearby_pharmacies_provider/state/nearby_pharmacies_state.dart';

import '../../../../di/di.dart';
import '../notifier/nearby_pharmacies_state_notifier.dart';

final nearbyPharmaciesProvider =
    StateNotifierProvider<NearbyPharmaciesStateNotifier, NearbyPharmaciesState>(
  (
    ref,
  ) =>
      NearbyPharmaciesStateNotifier(
    nearbyPharmaciesRepository: ref.watch(
      nearbyPharmaciesRepositoryProvider,
    ),
  ),
);
