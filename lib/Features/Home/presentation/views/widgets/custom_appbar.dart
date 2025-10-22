import 'package:bookly/core/utilty/asset_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, width: 150),
          const Spacer(),
          IconButton(
            onPressed: () => context.go('/searchView'),
            icon: Icon(Icons.search, color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
