import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../infastructure/services/drift_service/drift_service.dart';

part 'latest_medicine_state.freezed.dart';

@freezed
class LatestMedicineState with _$LatestMedicineState {
  const factory LatestMedicineState.initial() = _LatestMedicineInitial;
  const factory LatestMedicineState.loading() = _LatestMedicineLoading;
  const factory LatestMedicineState.empty() = _LatestMedicineEmpty;
  const factory LatestMedicineState.error() = _LatestMedicineError;
  const factory LatestMedicineState.loaded(MedicineData? medicine) =
      _LatestMedicineLoaded;
}
