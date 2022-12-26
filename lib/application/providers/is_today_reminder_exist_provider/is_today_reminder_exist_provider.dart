import 'package:healsense/application/providers/today_reminders_count_provider/provider/today_reminders_count_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_today_reminder_exist_provider.g.dart';

@riverpod
bool isTodayReminderExist(IsTodayReminderExistRef ref) {
  final count = ref.watch(todayRemindersCountProvider);

  return count.when(
      initial: () => false,
      loading: () => false,
      error: () => false,
      loaded: (count) {
        if (count == null) return false;

        return count > 0 ? true : false;
      });
}
