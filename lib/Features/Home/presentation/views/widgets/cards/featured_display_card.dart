import 'package:bookly/core/utilty/asset_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksDisplayCard extends StatelessWidget {
  const FeaturedBooksDisplayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        // BEFORE: onTap: () => GoRoute(path: '/DetailesView'),
        // AFTER: navigate using GoRouter
        onTap: () => context.go('/detailesView'),
        child: Container(
          width: 120,
          height: 150,
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            AssetsData.testimage,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
