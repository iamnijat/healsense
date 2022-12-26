// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_service.dart';

// ignore_for_file: type=lint
class MedicineData extends DataClass implements Insertable<MedicineData> {
  final int id;
  final String name;
  final String amount;
  final String type;
  final DateTime time;
  final DateTime date;
  final bool isNotified;
  const MedicineData(
      {required this.id,
      required this.name,
      required this.amount,
      required this.type,
      required this.time,
      required this.date,
      required this.isNotified});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['amount'] = Variable<String>(amount);
    map['type'] = Variable<String>(type);
    map['time'] = Variable<DateTime>(time);
    map['date'] = Variable<DateTime>(date);
    map['is_notified'] = Variable<bool>(isNotified);
    return map;
  }

  MedicineCompanion toCompanion(bool nullToAbsent) {
    return MedicineCompanion(
      id: Value(id),
      name: Value(name),
      amount: Value(amount),
      type: Value(type),
      time: Value(time),
      date: Value(date),
      isNotified: Value(isNotified),
    );
  }

  factory MedicineData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MedicineData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      amount: serializer.fromJson<String>(json['amount']),
      type: serializer.fromJson<String>(json['type']),
      time: serializer.fromJson<DateTime>(json['time']),
      date: serializer.fromJson<DateTime>(json['date']),
      isNotified: serializer.fromJson<bool>(json['isNotified']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'amount': serializer.toJson<String>(amount),
      'type': serializer.toJson<String>(type),
      'time': serializer.toJson<DateTime>(time),
      'date': serializer.toJson<DateTime>(date),
      'isNotified': serializer.toJson<bool>(isNotified),
    };
  }

  MedicineData copyWith(
          {int? id,
          String? name,
          String? amount,
          String? type,
          DateTime? time,
          DateTime? date,
          bool? isNotified}) =>
      MedicineData(
        id: id ?? this.id,
        name: name ?? this.name,
        amount: amount ?? this.amount,
        type: type ?? this.type,
        time: time ?? this.time,
        date: date ?? this.date,
        isNotified: isNotified ?? this.isNotified,
      );
  @override
  String toString() {
    return (StringBuffer('MedicineData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('type: $type, ')
          ..write('time: $time, ')
          ..write('date: $date, ')
          ..write('isNotified: $isNotified')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, amount, type, time, date, isNotified);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MedicineData &&
          other.id == this.id &&
          other.name == this.name &&
          other.amount == this.amount &&
          other.type == this.type &&
          other.time == this.time &&
          other.date == this.date &&
          other.isNotified == this.isNotified);
}

class MedicineCompanion extends UpdateCompanion<MedicineData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> amount;
  final Value<String> type;
  final Value<DateTime> time;
  final Value<DateTime> date;
  final Value<bool> isNotified;
  const MedicineCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.amount = const Value.absent(),
    this.type = const Value.absent(),
    this.time = const Value.absent(),
    this.date = const Value.absent(),
    this.isNotified = const Value.absent(),
  });
  MedicineCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String amount,
    required String type,
    required DateTime time,
    required DateTime date,
    required bool isNotified,
  })  : name = Value(name),
        amount = Value(amount),
        type = Value(type),
        time = Value(time),
        date = Value(date),
        isNotified = Value(isNotified);
  static Insertable<MedicineData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? amount,
    Expression<String>? type,
    Expression<DateTime>? time,
    Expression<DateTime>? date,
    Expression<bool>? isNotified,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (amount != null) 'amount': amount,
      if (type != null) 'type': type,
      if (time != null) 'time': time,
      if (date != null) 'date': date,
      if (isNotified != null) 'is_notified': isNotified,
    });
  }

  MedicineCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? amount,
      Value<String>? type,
      Value<DateTime>? time,
      Value<DateTime>? date,
      Value<bool>? isNotified}) {
    return MedicineCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      type: type ?? this.type,
      time: time ?? this.time,
      date: date ?? this.date,
      isNotified: isNotified ?? this.isNotified,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (amount.present) {
      map['amount'] = Variable<String>(amount.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (isNotified.present) {
      map['is_notified'] = Variable<bool>(isNotified.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MedicineCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('type: $type, ')
          ..write('time: $time, ')
          ..write('date: $date, ')
          ..write('isNotified: $isNotified')
          ..write(')'))
        .toString();
  }
}

class $MedicineTable extends Medicine
    with TableInfo<$MedicineTable, MedicineData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MedicineTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<String> amount = GeneratedColumn<String>(
      'amount', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 3),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<DateTime> time = GeneratedColumn<DateTime>(
      'time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isNotifiedMeta =
      const VerificationMeta('isNotified');
  @override
  late final GeneratedColumn<bool> isNotified =
      GeneratedColumn<bool>('is_notified', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_notified" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, amount, type, time, date, isNotified];
  @override
  String get aliasedName => _alias ?? 'medicine';
  @override
  String get actualTableName => 'medicine';
  @override
  VerificationContext validateIntegrity(Insertable<MedicineData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('is_notified')) {
      context.handle(
          _isNotifiedMeta,
          isNotified.isAcceptableOrUnknown(
              data['is_notified']!, _isNotifiedMeta));
    } else if (isInserting) {
      context.missing(_isNotifiedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MedicineData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MedicineData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}amount'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      time: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}time'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      isNotified: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_notified'])!,
    );
  }

  @override
  $MedicineTable createAlias(String alias) {
    return $MedicineTable(attachedDatabase, alias);
  }
}

abstract class _$DriftService extends GeneratedDatabase {
  _$DriftService(QueryExecutor e) : super(e);
  late final $MedicineTable medicine = $MedicineTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [medicine];
}
