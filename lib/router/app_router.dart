import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:trip_planner/features/auth/screens/login_screen.dart';
import 'package:trip_planner/features/auth/screens/splash_screen.dart';
import 'package:trip_planner/features/trips/screens/home_screen.dart';
import 'package:trip_planner/features/trips/screens/trip_details_screen.dart';

import '../features/auth/providers/auth_provider.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);
  return GoRouter(
    initialLocation: '/splash',

    routes: <RouteBase>[
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: '/splash',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: '/trips/:id',
        builder: (BuildContext context, GoRouterState state) {
          final tripId = state.pathParameters['id']!;
          return TripDetailsScreen(tripId: tripId);
        },
      ),
    ],
    redirect: (context, state) {
      final isInitialized = authState.isInitialized;
      final isLoggedIn = authState.isLoggedIn;

      final isSplash = state.matchedLocation == '/splash';
      final isLogin = state.matchedLocation == '/login';

      // Jeśli Firebase nie gotowy → splash
      if (!isInitialized && !isSplash) {
        return '/splash';
      }
      if (isInitialized && !isLoggedIn && !isLogin) {
        return '/login';
      }
      if (isLoggedIn && (isLogin || isSplash)) {
        return '/home';
      }
      return null;
    },
  );
});
