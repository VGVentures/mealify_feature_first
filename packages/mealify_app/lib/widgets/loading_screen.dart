import 'package:flutter/material.dart';
import 'package:mealify_app/widgets/loading_view.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoadingView(),
    );
  }
}
