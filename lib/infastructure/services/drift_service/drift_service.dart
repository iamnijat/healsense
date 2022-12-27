import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../../../../domain/entities/drift/medicine.dart';

part 'drift_service.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'medicine.sqlite'));

    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Medicine])
class DriftService extends _$DriftService {
  DriftService() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<MedicineData>> getMedicines() async {
    return await (select(medicine).get());
  }

  Future<int> createMedicine(MedicineCompanion entity) async {
    return await into(medicine).insert(entity);
  }

  Future<int> deleteMedicine(int id) async {
    return await (delete(medicine)..where((tbl) => tbl.id.equals(id))).go();
  }
}
