import 'package:fimber/fimber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/domain/repositories/nearby_pharmacies_repository.dart';

import '../state/nearby_pharmacies_state.dart';

class NearbyPharmaciesStateNotifier
    extends StateNotifier<NearbyPharmaciesState> {
  final NearbyPharmaciesRepository nearbyPharmaciesRepository;

  NearbyPharmaciesStateNotifier({
    required this.nearbyPharmaciesRepository,
  }) : super(const NearbyPharmaciesState.initial()) {
    getNearbyPharmacies();
  }

  Future<void> getNearbyPharmacies() async {
    state = const NearbyPharmaciesState.loading();

    final result = await nearbyPharmaciesRepository.getNearbyPharmacies();

    result.when(error: (_) {
      state = const NearbyPharmaciesState.error();
      Fimber.e('Error happened while fetching nearby pharmacies');
    }, success: (pharmacies) {
      if (pharmacies!.results!.isEmpty) {
        state = const NearbyPharmaciesState.empty();
        Fimber.d('There is no nearby pharmacies');
      } else {
        state = NearbyPharmaciesState.loaded(pharmacies);
        Fimber.d('Successfully fetched nearby pharmacies');
      }
    });
  }
}
