import 'package:auto_route/auto_route.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mynewsapp/config/routes/routes.gr.dart';

class HomeLayoutScreen extends StatelessWidget {
  const HomeLayoutScreen({super.key});

  @override
  Widget build(context) {
    return AutoTabsScaffold(
      extendBody: true,
      routes: const [HomeMenu(), SearchMenu(), SavedMenu()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return CurvedNavigationBar(
          color: Colors.white,
          onTap: tabsRouter.setActiveIndex,
          index: tabsRouter.activeIndex,
          backgroundColor: Colors.transparent,
          items: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home_rounded, size: 30),
                Text(
                  "Home",
                  style: TextStyle(),
                )
              ],
            ),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
          ],
        );
      },
    );
  }
}
