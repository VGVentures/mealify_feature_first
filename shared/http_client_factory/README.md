# http_client_factory

Builds an `http.Client` backed by the platform's own networking stack: iOS, macOS,
Android, or web.

```dart
final client = httpClientFactory();
```

## Why not just use the default client

Dart's built-in HTTP client does not honor system network configuration. The
platform clients do, which buys two things:

- Proxies and VPNs work the way users expect
- Because proxies work, so do mitmproxy, Charles, and Proxyman during development

## How the platform is chosen

The barrel uses a conditional export, so web builds never see `dart:io`:

```dart
export 'http_client_factory_io.dart'
    if (dart.library.js_interop) 'http_client_factory_web.dart';
```

On the IO side, `httpClientFactory()` returns a `CupertinoClient` on iOS and macOS,
a `CronetClient` on Android, and an `IOClient` everywhere else. Each native client
gets a 2 MB in-memory response cache, because they do no caching at all when given
no capacity.

The Android path is wrapped in a `try`/`catch` that falls back to `IOClient`.
Building a Cronet engine throws on devices without Play Services, and a networking
helper should not be the reason such a device cannot use the app.

## Why this is shared and not a feature

It has no idea what it fetches. Nothing here mentions a meal, a drink, or a
favorite, and any Flutter app could use it unchanged. That is the test for
belonging in `shared/`.

## Who uses it

[`mealify_app`](../../apps/mealify_app) calls it once during bootstrap and passes
the client to the API clients in
[`meals_data`](../../features/meals/meals_data) and
[`drinks_data`](../../features/drinks/drinks_data).
