# mealify_localizations

Every user-facing string in the app, for all features, in one package.

## Why one shared package

FFCA allows localizations per feature or shared, and recommends starting shared.
Per-feature localizations mean a delegate per feature and a translation pipeline
per feature; that cost is worth paying at a scale this app has not reached. If it
ever splits, features already depend on this package explicitly, so the change is
contained.

## Layout

```
lib/
  mealify_localizations.dart          barrel
  src/l10n/arb/app_en.arb             the source of truth, hand-edited
  src/l10n/gen/                       generated delegates, do not edit
  src/l10n/l10n.dart                  MealifyLocalizationsX extension
```

## Usage

The package exposes a `BuildContext` extension so widgets do not have to name the
delegate:

```dart
extension MealifyLocalizationsX on BuildContext {
  MealifyLocalizations get l10n => MealifyLocalizations.of(this);
}
```

Which reads at the call site as:

```dart
Text(context.l10n.addToFavoritesButtonText)
```

## Adding a string

Add the key and its `@key` description block to `src/l10n/arb/app_en.arb`, then
regenerate. Every entry carries a description, because a translator sees the string
without the screen around it.

Note that [`mealify_design_system`](../mealify_design_system) does not depend on
this package. Its widgets take their text as parameters, which keeps them usable
outside this app.

## Testing

`make test` from the repo root. There is nothing here to test beyond the generated
delegates.
