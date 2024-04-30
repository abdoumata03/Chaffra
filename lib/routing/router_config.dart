import 'package:chaffra/features/account/presentation/language.dart';

import 'package:chaffra/features/home/presentation/Home.dart';
import 'package:chaffra/routing/router_page_names.dart';
import 'package:chaffra/shared/screens/home.dart';
import 'package:chaffra/shared/screens/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/home/presentation/widgets/categories_gridview.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: pageNames.root,
      path: "/",
      pageBuilder: (context, state) =>  const MaterialPage<void>(
        child: SliderP(),
      ),
    ),
    GoRoute(
      name: pageNames.language,
      path: "/language",
      pageBuilder: (context, state) => const MaterialPage<void>(
        child: Language(),
      ),
    ),
  ],
);
