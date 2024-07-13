import 'package:chaffra/features/account/presentation/language.dart';
import 'package:chaffra/features/account/presentation/notifications.dart';
import 'package:chaffra/features/account/presentation/settings.dart';
import 'package:chaffra/features/home/presentation/home.dart';
import 'package:chaffra/routing/router_page_names.dart';
import 'package:chaffra/shared/screens/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: pageNames.root,
      path: "/",
      pageBuilder: (context, state) => const MaterialPage<void>(
        child: RootScreen(),
      ),
    ),
    GoRoute(
      name: pageNames.language,
      path: "/language",
      pageBuilder: (context, state) => const MaterialPage<void>(
        child: Language(),
      ),
    ),
    GoRoute(
      name: pageNames.home,
      path: "/home",
      pageBuilder: (context, state) => const MaterialPage<void>(
        child: HomePage(),
      ),
    ),
    GoRoute(
      name: pageNames.settings,
      path: "/settings",
      pageBuilder: (context, state) => const MaterialPage<void>(
        child: SettingsPage(),
      ),
    ),
    GoRoute(
      name: pageNames.notifications,
      path: "/notification",
      pageBuilder: (context, state) => const MaterialPage<void>(
        child: NotificationsPage(),
      ),
    ),
  ],
);
