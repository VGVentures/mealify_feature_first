import 'package:flutter/widgets.dart';
import 'package:mealify_design_system/mealify_design_system.dart';

/// The `loadLibrary` function of a deferred import.
///
/// Dart generates one of these for every `import ... deferred as` prefix, so a
/// route passes `feature_name.loadLibrary` straight into [DeferredLoader].
typedef LibraryLoader = Future<void> Function();

/// Loads a deferred module, showing [loadingWidget] until it arrives, then
/// handing off to [builder].
///
/// Every feature in this app is imported with a `deferred as` prefix so its
/// code downloads on demand rather than shipping in the initial bundle. That
/// code has to be present before the module widget can be constructed, which is
/// what this widget waits for.
///
/// The load is started once in `initState` and the future is held in state.
/// Calling `loader()` inside `build` would look equivalent and be a bug:
/// `build` runs many times, each call would hand `FutureBuilder` a new future,
/// and the screen would drop back to [loadingWidget] on every rebuild.
///
/// ```dart
/// DeferredLoader(
///   loader: favorites_list.loadLibrary,
///   builder: (context) => favorites_list.FavoritesListModule(
///     favoritesRepository: context.read(),
///   ),
/// )
/// ```
class DeferredLoader extends StatefulWidget {
  /// Construct a loader for the module [builder] returns.
  const DeferredLoader({
    required this.loader,
    required this.builder,
    this.loadingWidget = const LoadingScreen(),
    super.key,
  });

  /// The `loadLibrary` function of the deferred import being awaited.
  final LibraryLoader loader;

  /// Builds the widget that needs the deferred code. Called only after [loader]
  /// completes, so it may reference the deferred library's types.
  final Widget Function(BuildContext context) builder;

  /// Shown while [loader] is in flight.
  final Widget loadingWidget;

  @override
  State<DeferredLoader> createState() => _DeferredLoaderState();
}

class _DeferredLoaderState extends State<DeferredLoader> {
  late final Future<void> _future;

  @override
  void initState() {
    super.initState();
    _future = widget.loader();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Error loading module: ${snapshot.error}'),
            );
          }
          return widget.builder(context);
        }

        return widget.loadingWidget;
      },
    );
  }
}
