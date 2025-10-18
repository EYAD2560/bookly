import 'package:bookly/Features/splash/presentaion/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

// SplashScreen is the first screen users see when they open the app.
// It shows an animation and automatically navigates to the OnboardingScreen.
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashviewBody();
  }
}

