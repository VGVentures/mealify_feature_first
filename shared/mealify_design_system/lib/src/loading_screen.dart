import 'package:flutter/material.dart';
import 'package:mealify_design_system/src/loading_view.dart';

/// Displays a Screen with a Loading Indicator
class LoadingScreen extends StatelessWidget {
  /// Constructs a Widget that displays a loading indicator
  const LoadingScreen({this.child = const LoadingView(), super.key});

  /// The Widget to display when loading
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
