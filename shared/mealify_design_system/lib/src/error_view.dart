import 'package:flutter/material.dart';

/// A widget that displays an error
class ErrorView extends StatelessWidget {
  /// Constructs a widget that displays an error
  const ErrorView({
    required this.error,
    super.key,
  });

  /// The object that represents the error. Will be displayed using toString.
  final Object error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            size: 40,
          ),
          Text('$error'),
        ],
      ),
    );
  }
}
