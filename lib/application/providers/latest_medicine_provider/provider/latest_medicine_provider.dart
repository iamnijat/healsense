import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/di.dart';
import '../notifier/latest_medicine_state_notifier.dart';
import '../state/latest_medicine_state.dart';

final latestMedicineProvider = StateNotifierProvider.autoDispose<
    LatestMedicineStateNotifier, LatestMedicineState>((ref) {
  return LatestMedicineStateNotifier(
    medicinesRepository: ref.watch(
      medicinesRepositoryProvider,
    ),
  );
});
