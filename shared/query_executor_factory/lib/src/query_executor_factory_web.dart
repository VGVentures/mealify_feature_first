import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';

/// Opens a database connection on the web. Note: You must include the necessary
/// sqlite3.wasm & drift_worker files for the version of drift found in the
/// pubspec.lock file at the root of the repository.
QueryExecutor queryExecutorFactory(String databaseName) {
  return DatabaseConnection.delayed(
    Future(() async {
      final result = await WasmDatabase.open(
        databaseName: databaseName,
        sqlite3Uri: Uri.parse('sqlite3.wasm'),
        driftWorkerUri: Uri.parse('drift_worker.js'),
      );

      return result.resolvedExecutor;
    }),
  );
}
