import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart'; // ✅ provides NativeDatabase
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'tables.dart';

part 'app_db.g.dart';

@DriftDatabase(tables: [
  Meals,
  Restaurants,
  History,
  Settings,
  Outbox,
  SyncState,
])
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'verdict.sqlite'));
    return NativeDatabase(file);
  });
}