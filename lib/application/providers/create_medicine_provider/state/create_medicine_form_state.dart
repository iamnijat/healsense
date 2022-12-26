import 'package:fpdart/fpdart.dart' show none, Option;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healsense/domain/core/medicine_form/medicine_form_text_field.dart';

import '../../../../domain/core/error/failure_result.dart' show FailureResult;
import '../../../../infastructure/core/utils/either.dart' show Unit, Either;
import '../../../../domain/core/medicine_form/medicine_form_datetime_field.dart';

part 'create_medicine_form_state.freezed.dart';

@freezed
class CreateMedicineFormState with _$CreateMedicineFormState {
  const CreateMedicineFormState._();

  const factory CreateMedicineFormState({
    required MedicineFormTextField name,
    required MedicineFormTextField amount,
    required MedicineFormTextField type,
    required MedicineFormDateTimeField time,
    required MedicineFormDateTimeField date,
    required Option<Either<FailureResult, Unit>> failureOrSuccessOption,
    @Default(false) bool isLoading,
  }) = _CreateMedicineFormState;

  factory CreateMedicineFormState.initial() => CreateMedicineFormState(
        name: const MedicineFormTextField(value: ''),
        amount: const MedicineFormTextField(value: ''),
        type: const MedicineFormTextField(value: ''),
        time: const MedicineFormDateTimeField(),
        date: const MedicineFormDateTimeField(),
        failureOrSuccessOption: none(),
      );

  bool get isValid =>
      name.isValid &&
      amount.isValid &&
      type.isValid &&
      time.isValid &&
      date.isValid;
}
