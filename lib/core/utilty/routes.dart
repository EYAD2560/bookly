import 'package:bookly/Features/Home/data/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repo/home_repo.dart';
import 'package:bookly/Features/Home/presentation/maneger/simllar_books/smillar_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/home.dart';
import 'package:bookly/Features/Search/presentaion/views/search_view.dart';
import 'package:bookly/Features/book_details/presntation/views/details_view.dart';
import 'package:bookly/Features/onboarding/presentation/views/onboarding.dart';
import 'package:bookly/Features/splash/presentaion/views/splashview.dart';
import 'package:bookly/core/utilty/sevice_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class Routes {
  static final GoRouter router = GoRouter(
    routes: [
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
          return BlocProvider(
            create: (context) => SmillarBooksCubit(getit<HomeRepo>()),
            child:  DetailsView(book: state.extra as BookModel,),
          );
        },
      ),
      GoRoute(
        path: '/searchView',
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
