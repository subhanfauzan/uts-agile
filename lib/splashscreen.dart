import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_money/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  get splash => null;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset("assets/Lottie/splashs.json"),
          )
        ],
      ),
      nextScreen: const MainPage(),
      splashIconSize: 400,
      backgroundColor: Colors.white,
    );
  }
}
