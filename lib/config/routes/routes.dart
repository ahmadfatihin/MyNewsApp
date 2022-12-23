// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:mynewsapp/module/home/screens/home_layout.dart';
import 'package:mynewsapp/module/home/screens/home_screen.dart';
import 'package:mynewsapp/module/saved/screens/saved_screens.dart';
import 'package:mynewsapp/module/search/screens/search_screens.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeLayout, initial: true, children: [
      AutoRoute(page: HomeScreen, path: "/map"),
      AutoRoute(page: SearchScreen, path: "/search"),
      AutoRoute(page: SavedScreen, path: "/saved"),
    ]),
  ],
)
class $AppRouter {}
