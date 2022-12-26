import 'package:healsense/infastructure/core/constants/typedefs.dart';
import 'package:flutter/material.dart';

class MedicineTypeSelectionUtil {
  static List<String> getTypes(Loc loc) {
    return [
      '${loc?.selectMedicineTypeDialogTablet}',
      '${loc?.selectMedicineTypeDialogLiquid}',
    ];
  }

  static List<Widget> typesBuilder<M>(
    List<M> models,
    Widget Function(int index, M model) builder,
  ) {
    return models
        .asMap()
        .map<int, Widget>(
            (index, model) => MapEntry(index, builder(index, model)))
        .values
        .toList();
  }
}
