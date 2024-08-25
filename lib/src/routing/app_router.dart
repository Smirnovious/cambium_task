import 'package:flutter_cambium_task/src/screens/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (BuildContext context, state) => CustomTransitionPage(
            key: state.pageKey,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
            // child: const LoginScreen(),
            child: const HomeScreen()),
      ),
    ],
  );
});
