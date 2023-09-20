import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/demo_screen.dart';
import 'package:gorouter/home_detail111_screen.dart';
import 'package:gorouter/profile_screen.dart';
import 'package:gorouter/setting_screen.dart';

import 'bottom_screen.dart';
import 'home_detail_screen.dart';
import 'home_screen.dart';
import 'myapproutconst.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router = GoRouter(
    initialLocation: MyAppRoutConst.homerout,
    navigatorKey: _rootNavigatorKey,
    routes: [
      ///singlescreen and not showbottombar context.go used
      GoRoute(
        name: MyAppRoutConst.demo,
        path: MyAppRoutConst.demo,
        pageBuilder: (context, state) {
          return MaterialPage(child: DemoScreen());
        },
      ),

      ///for bottombar and nevigationshell come through constructr from bottomscreen
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return BottomNavigationScreen(
              navigationShell: navigationShell,
            );
          },
          branches: [
            ///home branch
            StatefulShellBranch(navigatorKey: _shellNavigatorKey, routes: [
              GoRoute(
                  name: MyAppRoutConst.homerout,
                  path: MyAppRoutConst.homerout,
                  pageBuilder: (context, state) {
                    return MaterialPage(child: HomeScreen());
                  },
                  routes: [
                    GoRoute(
                      name: MyAppRoutConst.homedetail,
                      path: MyAppRoutConst.homedetail,
                      pageBuilder: (context, state) {
                        return MaterialPage(
                            child: HomeDetailScreen(
                          name: 'vandana',
                        ));
                      },
                    ),
                    GoRoute(
                        name: MyAppRoutConst.homedetail1111,
                        path: MyAppRoutConst.homedetail1111,
                        pageBuilder: (context, state) {
                          return MaterialPage(child: HomeDetail111Screen());
                        },
                        routes: [])
                  ]),
            ]),

            ///onr tab to another tab for navigation context.go used otherwise context.pushnamed use
            ///prifile branch
            StatefulShellBranch(routes: [
              GoRoute(
                  name: MyAppRoutConst.profile,
                  path: MyAppRoutConst.profile,
                  pageBuilder: (context, state) {
                    return MaterialPage(child: ProfileScreen());
                  },
                  routes: []),
            ]),

            ///setting branch
            StatefulShellBranch(routes: [
              GoRoute(
                  name: MyAppRoutConst.setting,
                  path: MyAppRoutConst.setting,
                  pageBuilder: (context, state) {
                    return MaterialPage(child: SettingScreen());
                  },
                  routes: []),
            ]),
          ]),
    ]);
