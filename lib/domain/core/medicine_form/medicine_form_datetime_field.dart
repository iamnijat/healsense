import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_form_datetime_field.freezed.dart';

@freezed
class MedicineFormDateTimeField with _$MedicineFormDateTimeField {
  const factory MedicineFormDateTimeField({
    DateTime? value,
    @Default(false) bool isValid,
  }) = _MedicineFormDateTimeField;
}
