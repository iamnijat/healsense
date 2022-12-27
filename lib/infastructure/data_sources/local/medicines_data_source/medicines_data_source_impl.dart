import 'package:healsense/infastructure/services/drift_service/drift_service.dart';
import '../../../core/utils/date_format_util.dart';
import 'medicines_data_source.dart';

class MedicinesDataSourceImpl implements MedicinesDataSource {
  final DriftService _drift;

  MedicinesDataSourceImpl(
    this._drift,
  );

  @override
  Future<int> createMedicine(MedicineCompanion entity) async {
    return await _drift.createMedicine(entity);
  }

  @override
  Future<int> deleteMedicine(int id) async {
    return await _drift.deleteMedicine(id);
  }

  @override
  Future<List<MedicineData>?> get todayActiveMedicines async {
    final dateTimeNow = DateFormatUtil.dateTimeNow;

    final date = DateFormatUtil.dateMonthYearFormatted(dateTimeNow.toString());
    final data = await getMedicinesByDate(date);

    data?.sort((a, b) => a.time.compareTo(b.time));

    final activeMedicines = data?.where(
      (item) => item.time.isAfter(
        dateTimeNow,
      ),
    );
    return activeMedicines?.toList();
  }

  @override
  Future<List<MedicineData>?> getMedicinesByDate(DateTime date) async {
    final medicines = await _drift.getMedicines();

    final medicinesBydate = medicines.where((e) {
      return e.date == date;
    });
    return medicinesBydate.toList();
  }
}
