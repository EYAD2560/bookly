import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Returnbutton extends StatelessWidget {
  const Returnbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        // Use Navigator.canPop to avoid popping the last page
        // (which would leave the router with an empty configuration).
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
          return;
        }

        // If there's nothing to pop (root), navigate to a safe route using GoRouter.
        // Adjust '/' to your preferred fallback (e.g., '/homeView').
        GoRouter.of(context).go('/homeView');
      },
      icon: const Icon(Icons.arrow_back_ios),
    );
  }
}
