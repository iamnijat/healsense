import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/application/providers/create_medicine_provider/notifier/create_medicine_state_notifier.dart';

import '../../../../di/di.dart';
import '../state/create_medicine_form_state.dart';

final createMedicineProvider = StateNotifierProvider.autoDispose<
    CreateMedicineStateNotifier, CreateMedicineFormState>((ref) {
  return CreateMedicineStateNotifier(
    medicinesRepository: ref.watch(medicinesRepositoryProvider),
  );
});
