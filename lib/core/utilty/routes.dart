import 'package:bookly/Features/Home/presentation/views/home.dart';
import 'package:bookly/Features/book_details/presntation/views/details_view.dart';
import 'package:bookly/Features/onboarding/presentation/views/onboarding.dart';
import 'package:bookly/Features/splash/presentaion/views/splashview.dart';
import 'package:flutter/material.dart' ;
import 'package:go_router/go_router.dart';

abstract class Routes {

 static final GoRouter router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
       GoRoute(
        path: '/onboarding',
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardingScreen();
        },
      ),
      GoRoute(
        path: '/homeView',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: '/detailesView',
        builder: (BuildContext context, GoRouterState state) {
          return const DetailsView();
        },
      ),
    ],
  );
}
