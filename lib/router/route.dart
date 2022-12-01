import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '/pages/message_page.dart';
import '/pages/config_page.dart';
import '/pages/home_page.dart';
import '/pages/atme_page.dart';
import '/pages/search_page.dart';
import '/pages/profile_page.dart';
import '/pages/index_page.dart';
import '/pages/square_page.dart';

class AppRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {}
}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(initial: true, page: IndexPage, children: [
      AutoRoute(path: "home", page: HomePage),
      AutoRoute(path: "message", page: MessagePage),
      AutoRoute(path: "atme", page: AtmePage),
      AutoRoute(path: "profile", page: ProfilePage),
    ]),
    AutoRoute(path: "square", page: SquarePage),
    AutoRoute(path: "search", page: SearchPage),
    AutoRoute(path: "config", page: ConfigPage),
  ],
)
class $AppRouter {}
