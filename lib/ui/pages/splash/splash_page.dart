import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maksafy/core/utilities/router/global_routes.dart';
import 'package:maksafy/ui/pages/splash/splash_content.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () async {
      context.goNamed(
        InitialRoutes.homeContainer.name,
        params: {
          'tab': BottomBarRoutes.home,
        },
      );
    });
    return const SplashContent();
  }
}
