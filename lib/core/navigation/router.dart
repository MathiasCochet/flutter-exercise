import 'package:flutter_exercise/features/auth/ui/login_screen.dart';
import 'package:flutter_exercise/features/splash/ui/splash_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

const String splashScreenPath = "/";
const String loginScreenPath = "/auth";

final goRouterProvider = Provider<GoRouter>((ref) => GoRouter(
      routes: [
        GoRoute(
          path: splashScreenPath,
          builder: (_, __) => const SplashScreen(),
        ),
        GoRoute(
          path: loginScreenPath,
          builder: (_, __) => const LoginScreen(),
        ),
      ],
    ));
