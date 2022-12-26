import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healsense/infastructure/core/constants/typedefs.dart';

class CreateMedicineNotificationStateNotifier
    extends StateNotifier<IsNotified> {
  CreateMedicineNotificationStateNotifier() : super(false);

  set isNotified(IsNotified value) => state = value;

  void toggle(IsNotified value) => isNotified = value;
}
