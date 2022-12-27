import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/di.dart';
import '../notifier/today_reminders_count_state_notifier.dart';
import '../state/today_reminders_count_state.dart';

final todayRemindersCountProvider = StateNotifierProvider.autoDispose<
    TodayRemindersCountStateNotifier, TodayRemindersCountState>((ref) {
  return TodayRemindersCountStateNotifier(
    medicinesRepository: ref.watch(
      medicinesRepositoryProvider,
    ),
  );
});
