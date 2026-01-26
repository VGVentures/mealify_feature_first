import 'package:flutter/material.dart';

/// An individual loading indicator
class LoadingView extends StatelessWidget {
  /// Constructs a Widget that shows a loading indicator
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
