import 'package:flutter/material.dart';
import 'package:maksafy/core/styles/r.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: R.colors.homeBackgroundColor,
        child: Center(
          child: Image.asset(
            R.drawables.appNameImage,
          ),
        ),
      ),
    );
  }
}
