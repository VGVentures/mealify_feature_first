import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

/// Logs every cubit transition and error in the app.
///
/// Installed once by [bootstrap], so it covers every feature's cubits without
/// any feature knowing it exists.
class AppBlocObserver extends BlocObserver {
  /// Construct the observer.
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

/// Installs cross-flavor setup, then runs the widget [builder] returns.
///
/// Every flavor entry point (`main_development.dart`, `main_staging.dart`,
/// `main_production.dart`) goes through here, so error handling and the
/// [AppBlocObserver] are identical across all three and a flavor file stays a
/// couple of lines. Configuration that differs per flavor belongs in that
/// flavor's entry point instead.
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  // Add cross-flavor configuration here

  runApp(await builder());
}
