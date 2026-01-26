// lib/database/connection/native.dart
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

/// Opens a connection for native platforms (iOS, macOS, Android, etc)
QueryExecutor queryExecutorFactory(String databaseName) {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, '$databaseName.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
