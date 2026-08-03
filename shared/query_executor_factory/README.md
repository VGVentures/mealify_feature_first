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

## Where the native SQLite comes from

`package:sqlite3` 3.x downloads a prebuilt SQLite through a [Dart build
hook](https://dart.dev/tools/hooks) and the platform build embeds it. This
replaced the `sqlite3_flutter_libs` plugin, which is end-of-life and no longer a
dependency of this repo.

That is why this package floors `drift` at 2.34: below it, `sqlite3` resolves to
2.x, which is the version that needed the plugin.

The hook produces one binary per target, so a local build or test only ever
exercises the host. CI builds Android and Windows and asserts the library is
present in each artifact.

## Web builds need two extra files

The web path loads `sqlite3.wasm` and `drift_worker.js` at runtime, and they must
match the Drift version resolved in the root `pubspec.lock`. A web build without
them fails when a database is first opened, not at compile time.

Both are committed under `apps/mealify_app/web/`. Take them from the drift
release matching the resolved version, which publishes the pair together:

```sh
# Run from the repo root.
V=$(awk '/^  drift:$/{f=1} f && /^    version:/{gsub(/[" ]/,"",$2); print $2; exit}' pubspec.lock)
[ -n "$V" ] || { echo "could not read drift's version from pubspec.lock"; exit 1; }
for f in sqlite3.wasm drift_worker.js; do
  curl -fL -o "apps/mealify_app/web/$f" \
    "https://github.com/simolus3/drift/releases/download/drift-$V/$f"
done
```

The `[ -n "$V" ]` guard and `curl -f` are both deliberate. Without them a
mis-parsed version builds a URL like `.../drift-/sqlite3.wasm`, and curl happily
writes the 404 body over a working binary.

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
