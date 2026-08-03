# mealify_design_system

Widgets shared across features. Its defining property is what it does *not* know:
this package names nothing from any feature, and its only dependency is Flutter.

## What lives here

| Export | What it is |
| --- | --- |
| `DetailsView` | Two-tab detail layout: a list of rows, a block of prose, a collapsing image header |
| `DetailsRow` | `({String label, String? value})`, the row shape `DetailsView` renders |
| `ErrorView` | Error state for a screen body |
| `LoadingView` | Loading state for a screen body |
| `LoadingScreen` | Full-screen loading, used while a deferred module loads |

## Why DetailsRow exists

`DetailsView` shows a meal's or a drink's ingredients, so the obvious signature
would take a `List<Ingredient>` from `ingredients_domain`. It used to, and that was
a bug: a package under `shared/` importing a package under `features/` breaks the
rule that shared code has zero knowledge of the app's features. The FFCA guidance
puts a `LoginButton` in the not-shared column for the same reason.

The fix was to give the widget a vocabulary of its own:

```dart
typedef DetailsRow = ({String label, String? value});
```

Callers map into it, which takes one line at each call site:

```dart
rows: [
  for (final ingredient in meal.ingredients)
    (label: ingredient.name, value: ingredient.measurement),
],
```

Tab labels are parameters too, rather than being read from localizations here, so
this package does not depend on `mealify_localizations` either. The result is a
widget that would work unchanged in an app that has never heard of a meal.

## Testing

`dart run melos test` from the repo root, or `fvm flutter test` here.

`DetailsView` renders `Image.network`, which widget tests cannot reach. The tests
use `test/helpers/mock_network_images.dart`, which sets
`debugNetworkImageHttpClientProvider` to serve a 1x1 PNG. `HttpOverrides` does not
work for this: `NetworkImage` holds a single static `HttpClient`, so an override
installed in a zone never reaches it.

The tests deliberately pass tab labels that are not the app's real copy. A test
that asserted on "Ingredients" while also passing "Ingredients" could not tell a
parameter from a hardcoded string.
