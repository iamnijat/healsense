import 'package:drift/drift.dart';

class Medicine extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().named('name')();
  TextColumn get amount => text().named('amount').withLength(max: 3)();
  TextColumn get type => text().named('type')();
  DateTimeColumn get time => dateTime().named('time')();
  DateTimeColumn get date => dateTime().named('date')();
  BoolColumn get isNotified => boolean().named('is_notified')();
}
