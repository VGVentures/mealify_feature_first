# query_executor_factory

Builds a Drift `QueryExecutor` for the platform the app is running on.

```dart
final executor = queryExecutorFactory('meals');
```

Every feature that stores data locally opens its database through this, so opening
a database is written once instead of three times.

## How the platform is chosen

The barrel uses a conditional export, so web builds never see `dart:io` and native
builds never pull in the WASM path:

```dart
export 'query_executor_factory_io.dart'
    if (dart.library.js_interop) 'query_executor_factory_web.dart';
```

**Native** returns a `LazyDatabase` that resolves the app documents directory and
opens `{databaseName}.sqlite` there, with `NativeDatabase.createInBackground` so
queries run off the UI isolate.

**Web** returns a delayed `DatabaseConnection` backed by `WasmDatabase`.

## Web builds need two extra files

The web path loads `sqlite3.wasm` and `drift_worker.js` at runtime, and they must
match the Drift version resolved in the root `pubspec.lock`. A web build without
them fails when a database is first opened, not at compile time.

## One database per feature

Each feature owns its own database file: `mealify_meals_database`,
`mealify_drinks_database`, `mealify_favorites_database`. This factory takes the
name as an argument rather than owning a single shared schema, which is what lets a
feature's storage be migrated or dropped without touching another's.

## Why this is shared and not a feature

It knows nothing about what gets stored. Any Drift app could use it unchanged.

## Who uses it

[`mealify_app`](../../apps/mealify_app) calls it during bootstrap, once per
database, and passes each executor to the matching data package.
