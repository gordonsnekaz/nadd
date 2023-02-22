// ignore_for_file: use_build_context_synchronously, library_private_types_in_public_api, sized_box_for_whitespace

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'onboarding.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool showLoginPage = true;

  @override
  void initState() {
    super.initState();
  }

  void toggleScreens() {
    showLoginPage = !showLoginPage;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            child: const Image(image: AssetImage('assets/nadd_logo.png')),
          ),
          const Text(
            'NADD',
            style: TextStyle(
                color: Color(0xff013C8A),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      backgroundColor: const Color(0xfff5f8ff),
      nextScreen: const OnBoardingScreen(),
      splashIconSize: 100,
      duration: 3000,
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
