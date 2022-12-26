import '../../../../infastructure/models/nearby_pharmacies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nearby_pharmacies_state.freezed.dart';

@freezed
class NearbyPharmaciesState with _$NearbyPharmaciesState {
  const factory NearbyPharmaciesState.initial() = _NearbyPharmaciesInitial;
  const factory NearbyPharmaciesState.loading() = _NearbyPharmaciesLoading;
  const factory NearbyPharmaciesState.empty() = _NearbyPharmaciesEmpty;
  const factory NearbyPharmaciesState.error() = _NearbyPharmaciesError;
  const factory NearbyPharmaciesState.loaded(
      NearbyPharmacies? nearbyPharmacies) = _NearbyPharmaciesLoaded;
}
