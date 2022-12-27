import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/di.dart';
import '../notifier/today_active_medicines_state_notifier.dart';
import '../state/today_active_medicines_state.dart';

final todayActiveMedicinesProvider = StateNotifierProvider.autoDispose<
    TodayActiveMedicinesStateNotifier, TodayActiveMedicinesState>((
  ref,
) {
  return TodayActiveMedicinesStateNotifier(
    medicinesRepository: ref.watch(
      medicinesRepositoryProvider,
    ),
  );
});
