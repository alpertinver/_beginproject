import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter Rotalar() {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return loginScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'homePageScreen',
            builder: (BuildContext context, GoRouterState state) {
              return HomePagebigScreen();
            },
          ),
        ],
      ),
      GoRoute(
        path: '/HomePagebigScreen',
        builder: (context, state) {
          return HomePagebigScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path:
                'Roomscreen', // NOTE: Don't need to specify "/" character for router’s parents
            builder: (context, state) {
              return Roomscreen();
            },
          ),
        ],
      ),
      GoRoute(
        path: '/speechtotext',
        builder: (context, state) {
          return HomePagebigScreen();
        },
        routes: <RouteBase>[
          // Add child routes
          // GoRoute(
          //   path:
          //       'Workscreen', // NOTE: Don't need to specify "/" character for router’s parents
          //   builder: (context, state) {
          //     return WorkScreenmobile();
          //   },
          // ),
        ],
      ),
    ],
  );
}
