import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_form_text_field.freezed.dart';

@freezed
class MedicineFormTextField with _$MedicineFormTextField {
  const factory MedicineFormTextField({
    @Default('') String value,
    @Default(false) bool isValid,
  }) = _MedicineFormTextField;
}
