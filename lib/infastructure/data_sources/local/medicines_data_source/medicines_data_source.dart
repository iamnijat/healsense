import '../../../services/drift_service/drift_service.dart';

abstract class MedicinesDataSource {
  Future<List<MedicineData>?> getMedicinesByDate(DateTime date);

  Future<List<MedicineData>?> get todayActiveMedicines;

  Future<int> createMedicine(MedicineCompanion entity);

  Future<int> deleteMedicine(int id);
}
