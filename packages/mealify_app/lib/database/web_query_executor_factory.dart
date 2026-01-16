import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';

QueryExecutor queryExecutorFactory() {
  return DatabaseConnection.delayed(
    Future(() async {
      final result = await WasmDatabase.open(
        databaseName: 'mealify_database',
        sqlite3Uri: Uri.parse('sqlite3.wasm'),
        driftWorkerUri: Uri.parse('drift_worker.js'),
      );

      return result.resolvedExecutor;
    }),
  );
}
