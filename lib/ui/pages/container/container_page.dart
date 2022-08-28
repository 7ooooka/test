import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:maksafy/ui/pages/container/widgets/bottom_nav_bar.dart';
import 'package:maksafy/ui/pages/home/home_page.dart';
import 'package:maksafy/core/utilities/router/global_routes.dart';

class ContainerPage extends HookWidget {

  ContainerPage({super.key, required this.tab});
  final String tab;
  final pages = <String, Widget>{
    BottomBarRoutes.more: const SizedBox(),
    BottomBarRoutes.orders: const SizedBox(),
    BottomBarRoutes.sales: const SizedBox(),
    BottomBarRoutes.wallet: const SizedBox(),
    BottomBarRoutes.home:  const HomePage()
  };

  @override
  Widget build(BuildContext context) {
    final pageViewController =
        usePageController(initialPage: pages.keys.toList().indexOf(tab));
    return Scaffold(
      body: PageView(
        controller: pageViewController,
        physics: const NeverScrollableScrollPhysics(),
        children: pages.values.toList(),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: pages.keys.toList().indexOf(tab),
        onTabChanged: (index) {
          pageViewController.jumpToPage(index);
          context.goNamed(
            InitialRoutes.homeContainer.name,
            params: {
              'tab': pages.keys.toList()[index],
            },
          );
        },
      ),
    );
  }
}
