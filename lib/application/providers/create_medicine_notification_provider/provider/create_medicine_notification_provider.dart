import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/infastructure/core/constants/typedefs.dart';
import 'package:healsense/application/providers/create_medicine_notification_provider/notifier/create_medicine_notification_state_notifier.dart';

final createMedicineNotificationProvider = StateNotifierProvider.autoDispose<
    CreateMedicineNotificationStateNotifier, IsNotified>((_) {
  return CreateMedicineNotificationStateNotifier();
});
