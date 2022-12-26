import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../infastructure/services/drift_service/drift_service.dart';

part 'medicines_by_date_state.freezed.dart';

@freezed
class MedicinesByDateState with _$MedicinesByDateState {
  const factory MedicinesByDateState.initial() = _MedicinesByDateInitial;
  const factory MedicinesByDateState.loading() = _MedicinesByDateLoading;
  const factory MedicinesByDateState.empty() = _MedicinesByDateEmpty;
  const factory MedicinesByDateState.error() = _MedicinesByDateError;
  const factory MedicinesByDateState.loaded(List<MedicineData>? medicines) =
      _MedicinesByDateLoaded;
}
