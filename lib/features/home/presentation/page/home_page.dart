import 'package:Swipe/core/navigation/app.router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
        appBarBuilder: (_, TabsRouter tabsRouter) => AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: const Icon(Icons.search_rounded),
                  iconSize: 30,
                  onPressed: () {
                    context.router.push(const MainSearchRoute());
                  }),
              Image.asset(
                'assets/images/logo.png',
                width: 50,
                height: 50,
              ),
              IconButton(
                icon: const Icon(Icons.account_circle),
                iconSize: 30,
                onPressed: () {
                  context.router.push(const MyProfilBrandRoute());
                },
              ),
            ],
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        routes: const <PageRouteInfo>[
          HomeBrandRoute(),
          HomeContentCreatorRoute(),
          ProfilContentCreatorRoute(),
        ],
        bottomNavigationBuilder: (_, TabsRouter tabsRouter) => SalomonBottomBar(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: <SalomonBottomBarItem>[
            SalomonBottomBarItem(
              selectedColor: Colors.amberAccent,
              icon: const Icon(
                Icons.architecture_rounded,
                size: 30,
              ),
              title: const Text('Creators'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.blue[200],
              icon: const Icon(
                Icons.amp_stories_rounded,
                size: 30,
              ),
              title: const Text('Brands'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.greenAccent[100],
              icon: const Icon(
                Icons.android_rounded,
                size: 30,
              ),
              title: const Text('???'),
            ),
          ],
        ),
      );
}
