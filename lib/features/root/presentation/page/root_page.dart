import 'package:Swipe/core/navigation/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
        appBarBuilder: (_, TabsRouter tabsRouter) => AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.search_rounded,
                size: 30,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 50,
                height: 50,
              ),
              const Icon(
                Icons.reset_tv_rounded,
                size: 30,
              ),
            ],
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        routes: const <PageRouteInfo>[
          HomeBrandRouter(),
          HomeContentCreatorRouter(),
          ProfilBrandRouter(),
        ],
        bottomNavigationBuilder: (_, TabsRouter tabsRouter) => SalomonBottomBar(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: <SalomonBottomBarItem>[
            SalomonBottomBarItem(
              selectedColor: Colors.amberAccent,
              icon: const Icon(
                Icons.cancel_rounded,
                size: 30,
              ),
              title: const Text('Home\nBrand'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.blue[200],
              icon: const Icon(
                Icons.account_balance_wallet_rounded,
                size: 30,
              ),
              title: const Text('Home\nContent\nCreator'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.greenAccent[100],
              icon: const Icon(
                Icons.handshake_rounded,
                size: 30,
              ),
              title: const Text('Profil\nBrand'),
            ),
          ],
        ),
      );
}
