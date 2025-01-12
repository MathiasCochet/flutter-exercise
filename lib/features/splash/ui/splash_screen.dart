import 'package:flutter/material.dart';
import 'package:flutter_exercise/core/navigation/router.dart';
import 'package:flutter_exercise/features/splash/ui/splash_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<bool> splashState = ref.watch(splashActionProvider);

    splashState.whenData((value) {
      if (value) {
        Future.microtask(() => ref.read(goRouterProvider).go(loginScreenPath));
      }
    });

    return Scaffold(
        body: switch (splashState) {
      AsyncData() => _buildLoadingContent(),
      AsyncError() => _buildErrorContent(),
      _ => _buildLoadingContent(),
    });
  }
}

Widget _buildLoadingContent() {
  return const Center(
    child: CircularProgressIndicator(),
  );
}

Widget _buildErrorContent() {
  return const Center(
    child: Text(
      "Something went wrong!",
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
