import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_reminders_count_state.freezed.dart';

@freezed
class TodayRemindersCountState with _$TodayRemindersCountState {
  const factory TodayRemindersCountState.initial() =
      _TodayRemindersCountInitial;
  const factory TodayRemindersCountState.loading() =
      _TodayRemindersCountLoading;
  const factory TodayRemindersCountState.error() = _TodayRemindersCountError;
  const factory TodayRemindersCountState.loaded(int? count) =
      _TodayRemindersCountLoaded;
}
