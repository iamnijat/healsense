import 'package:fimber/fimber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/application/providers/today_active_medicines_provider/state/today_active_medicines_state.dart';
import '../../../../domain/repositories/medicines_repository.dart';

class TodayActiveMedicinesStateNotifier
    extends StateNotifier<TodayActiveMedicinesState> {
  final MedicinesRepository medicinesRepository;

  TodayActiveMedicinesStateNotifier({
    required this.medicinesRepository,
  }) : super(const TodayActiveMedicinesState.initial()) {
    getMedicines();
  }

  Future<void> getMedicines() async {
    state = const TodayActiveMedicinesState.loading();

    final result = await medicinesRepository.todayActiveMedicines;

    result.when(error: (_) {
      state = const TodayActiveMedicinesState.error();
      Fimber.e('Error happened while fetching today medicines');
    }, success: (medicines) {
      if (medicines!.isEmpty) {
        state = const TodayActiveMedicinesState.empty();
        Fimber.d('There is no medicine today');
      } else {
        state = TodayActiveMedicinesState.loaded(medicines);
        Fimber.d('Successfully fetched today medicines');
      }
    });
  }
}
