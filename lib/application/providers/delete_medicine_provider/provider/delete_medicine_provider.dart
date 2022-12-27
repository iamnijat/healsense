import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/di.dart';
import '../notifier/delete_medicine_state_notifier.dart';

final deleteMedicineProvider = StateNotifierProvider.autoDispose<
    DeleteMedicineStateNotifier, DeleteMedicineState>((ref) {
  return DeleteMedicineStateNotifier(
    medicinesRepository: ref.watch(medicinesRepositoryProvider),
  );
});
