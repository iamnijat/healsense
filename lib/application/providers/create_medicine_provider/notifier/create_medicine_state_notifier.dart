import 'package:fpdart/fpdart.dart' show none, some;
import 'package:fimber/fimber.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart';
import 'package:healsense/infastructure/core/constants/durations.dart';
import 'package:healsense/domain/core/medicine_form/medicine_form_text_field.dart';
import '../../../../domain/core/medicine_form/medicine_form_datetime_field.dart';
import '../../../../domain/repositories/medicines_repository.dart';
import '../../../../infastructure/services/drift_service/drift_service.dart';
import '../state/create_medicine_form_state.dart';

class CreateMedicineStateNotifier
    extends StateNotifier<CreateMedicineFormState> {
  final MedicinesRepository medicinesRepository;

  CreateMedicineStateNotifier({
    required this.medicinesRepository,
  }) : super(CreateMedicineFormState.initial());

  Future<void> createMedicine({required bool isNotified}) async {
    state = state.copyWith(isLoading: true);

    await _addDelay(Durations.eightHundredMillisecondsDuration);

    final entity = MedicineCompanion(
      name: Value(state.name.value),
      amount: Value(state.amount.value),
      type: Value(state.type.value),
      time: Value(state.time.value!),
      isNotified: Value(isNotified),
      date: Value(state.date.value!),
    );

    final result = await medicinesRepository.createMedicine(entity);

    if (result.isSuccess()) {
      Fimber.d('Successfully created medicine');
    } else {
      Fimber.e('Error happened while creating medicine');
    }

    state = state.copyWith(
      failureOrSuccessOption: some(result),
      isLoading: false,
      name: const MedicineFormTextField(value: ''),
      amount: const MedicineFormTextField(value: ''),
      type: const MedicineFormTextField(value: ''),
      time: const MedicineFormDateTimeField(),
      date: const MedicineFormDateTimeField(),
    );
  }

  void updateName(String name) {
    state = state.copyWith(
      failureOrSuccessOption: none(),
      name: MedicineFormTextField(
        value: name,
        isValid: name.isNotEmpty,
      ),
    );
  }

  void updateAmount(String amount) {
    state = state.copyWith(
      failureOrSuccessOption: none(),
      amount: MedicineFormTextField(
        value: amount,
        isValid: amount.isNotEmpty,
      ),
    );
  }

  void updateType(String type) {
    state = state.copyWith(
      failureOrSuccessOption: none(),
      type: MedicineFormTextField(
        value: type,
        isValid: type.isNotEmpty,
      ),
    );
  }

  void updateTime(DateTime time) {
    state = state.copyWith(
      failureOrSuccessOption: none(),
      time: MedicineFormDateTimeField(
        value: time,
        isValid: time.toString().isNotEmpty,
      ),
    );
  }

  void updateDate(DateTime date) {
    state = state.copyWith(
      failureOrSuccessOption: none(),
      date: MedicineFormDateTimeField(
        value: date,
        isValid: date.toString().isNotEmpty,
      ),
    );
  }

  _addDelay(Duration delay) async => await Future.delayed(delay);
}
