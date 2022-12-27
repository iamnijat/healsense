import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/application/providers/date_picker_timeline_provider/provider/date_picker_timeline_provider.dart';
import 'package:healsense/di/di.dart';

import '../notifier/medicines_by_date_state_notifier.dart';
import '../state/medicines_by_date_state.dart';

final medicinesByDateProvider = StateNotifierProvider.autoDispose<
    MedicinesByDateStateNotifier, MedicinesByDateState>((ref) {
  final date = ref.watch(datePickerTimelineProvider);
  return MedicinesByDateStateNotifier(
    medicinesRepository: ref.watch(
      medicinesRepositoryProvider,
    ),
    date: date,
  );
});
