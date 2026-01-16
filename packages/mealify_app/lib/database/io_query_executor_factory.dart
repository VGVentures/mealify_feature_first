// lib/database/connection/native.dart
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// Opens a connection for native platforms (iOS, macOS, Android, etc)
QueryExecutor queryExecutorFactory() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'mealify_database.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
