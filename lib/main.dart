import 'package:bookly/Features/Home/data/repo/home_repo_implementation.dart';
import 'package:bookly/Features/Home/presentation/maneger/featured_books/featured_books_cubit.dart';
import 'package:bookly/core/utilty/routes.dart';
import 'package:bookly/core/utilty/sevice_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getit<HomeRewpoImplementation>()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),

        routerConfig: Routes.router,
      ),
    );
  }
}
