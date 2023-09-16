import 'package:_beginproject/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter Rotalar() {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return HomePageScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'homePageScreen',
            builder: (BuildContext context, GoRouterState state) {
              return HomePageScreen();
            },
          ),
        ],
      ),
      GoRoute(
        path: '/HomePagebigScreen',
        builder: (context, state) {
          return HomePageScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path:
                'Roomscreen', // NOTE: Don't need to specify "/" character for router’s parents
            builder: (context, state) {
              return HomePageScreen();
            },
          ),
        ],
      ),
      GoRoute(
        path: '/speechtotext',
        builder: (context, state) {
          return HomePageScreen();
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
