import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:techquest/features/onboarding/ui/screens/on_boarding_screens.dart';

class AnimatedSplashScreenCustom extends StatelessWidget {
  const AnimatedSplashScreenCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/logo_TechQuest.png',
      nextScreen: const OnBoardingScreen(),
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      duration: 500,
      curve: Curves.easeInCirc,
      centered: true,
    );
  }
}
