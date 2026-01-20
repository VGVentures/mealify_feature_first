import 'package:flutter/widgets.dart';
import 'package:mealify_app/widgets/loading_screen.dart';

typedef LibraryLoader = Future<void> Function();

/// A widget that loads and caches a deferred module. This ensures that routes
/// that are added to the screen are not reloaded every time the `build` method
/// is run and the deferred module future is recreated.
class DeferredLoader extends StatefulWidget {
  const DeferredLoader({
    required this.loader,
    required this.builder,
    this.loadingWidget = const LoadingScreen(),
    super.key,
  });

  final LibraryLoader loader;
  final Widget Function(BuildContext context) builder;
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
