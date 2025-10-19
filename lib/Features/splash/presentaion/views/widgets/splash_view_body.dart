import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bookly/Features/onboarding/presentation/views/onboarding.dart';
import 'package:bookly/core/utilty/asset_data.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashviewBody extends StatelessWidget {
  const SplashviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // Widget displayed during the splash
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // App logo
          Image.asset(AssetsData.logo, height: 120),
          const SizedBox(height: 20),
        ],
      ),

      // Background color of the splash screen
      backgroundColor: Colors.black,

      // The screen to navigate to after the splash ends
      nextScreen: const OnboardingScreen(),

      // Controls the size of the splash widget
      splashIconSize: 300,

      // Duration the splash stays on screen (in milliseconds)
      duration: 2500,

      // Duration of the transition animation
      animationDuration: const Duration(milliseconds: 1000),

      // Type of animation used to show splash content
      splashTransition: SplashTransition.fadeTransition,

      // Type of transition to switch to the next screen
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
