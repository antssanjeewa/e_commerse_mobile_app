import 'package:e_comm_app/router/bottom_nav_bar.dart';
import 'package:e_comm_app/router/pages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../app/screen/home/home_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  GoRouter get goRouter => _router;

// GoRouter configuration
  final GoRouter _router = GoRouter(
    initialLocation: Pages.home.toPath(),
    // navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      // GoRoute(
      //   name: 'home',
      //   path: '/',
      //   builder: (context, state) => HomeScreen(),
      // ),
      // GoRoute(
      //   name: 'shope',
      //   path: '/shope',
      //   // builder: (context, state) => MoreScreen(),
      // ),

      ShellRoute(
        // navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => BottomNavigationPage(child: child),
        routes: [
          GoRoute(
            path: Pages.home.toPath(),
            name: Pages.home.toPathName(),
            builder: (context, state) => HomeScreen(),
          ),
          GoRoute(
            path: '/chat',
            builder: (context, state) => HomeScreen(),
          ),
        ],
      )
    ],
  );
}
