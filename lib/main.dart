import 'package:bookly/core/utilty/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

      routerConfig: Routes.router,
    );
  }
}
