import 'dart:async';

import 'package:bookly/core/utilty/asset_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashviewBody extends StatefulWidget {
  const SplashviewBody({super.key});

  @override
  State<SplashviewBody> createState() => _SplashviewBodyState();
}

class _SplashviewBodyState extends State<SplashviewBody>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fade;

  // match your previous splash timings
  static const int splashDurationMs = 2500;
  static const int animationDurationMs = 1000;

  Timer? _navTimer;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: animationDurationMs),
    );

    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    // start the fade-in
    _controller.forward();

    // schedule router navigation after splash duration
    _navTimer = Timer(const Duration(milliseconds: splashDurationMs), () {
      if (!mounted) return;
      // Use GoRouter's declarative API — safe with MaterialApp.router
      GoRouter.of(context).go('/onboarding');
    });
  }

  @override
  void dispose() {
    _navTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // match your previous background color
      backgroundColor: Colors.black,
      body: Center(
        child: FadeTransition(
          opacity: _fade,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(AssetsData.logo, height: 120),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
