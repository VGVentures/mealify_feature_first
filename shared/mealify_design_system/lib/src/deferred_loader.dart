import 'package:flutter/widgets.dart';
import 'package:mealify_design_system/mealify_design_system.dart';

/// A function that loads a deferred library.
typedef LibraryLoader = Future<void> Function();

/// A widget that loads and caches a deferred module. This ensures that routes
/// that are added to the screen are not reloaded every time the `build` method
/// is run and the deferred module future is recreated.
class DeferredLoader extends StatefulWidget {
  /// Creates a [DeferredLoader] widget.
  const DeferredLoader({
    required this.loader,
    required this.builder,
    this.loadingWidget = const LoadingScreen(),
    super.key,
  });

  /// The function that loads the deferred library.
  final LibraryLoader loader;

  /// The builder that creates the widget after the library is loaded.
  final Widget Function(BuildContext context) builder;

  /// The widget to display while loading. Defaults to [LoadingScreen].
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
