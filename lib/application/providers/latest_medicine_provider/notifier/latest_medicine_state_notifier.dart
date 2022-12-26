import 'package:fimber/fimber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/application/providers/latest_medicine_provider/state/latest_medicine_state.dart';
import '../../../../domain/repositories/medicines_repository.dart';

class LatestMedicineStateNotifier extends StateNotifier<LatestMedicineState> {
  final MedicinesRepository medicinesRepository;

  LatestMedicineStateNotifier({
    required this.medicinesRepository,
  }) : super(const LatestMedicineState.initial()) {
    getLatestMedicine();
  }

  Future<void> getLatestMedicine() async {
    state = const LatestMedicineState.loading();

    final result = await medicinesRepository.todayLatestMedicine;

    result.when(error: (_) {
      state = const LatestMedicineState.error();
      Fimber.e('Error happened while fetching latest medicine');
    }, success: (medicine) {
      if (medicine == null) {
        state = const LatestMedicineState.empty();
        Fimber.d('There is no latest medicine');
      } else {
        state = LatestMedicineState.loaded(medicine);
        Fimber.d('Successfully fetched latest medicine');
      }
    });
  }
}
