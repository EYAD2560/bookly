import 'package:bookly/Features/Home/presentation/maneger/featured_books/featured_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/cards/featured_display_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FeaturedBooksFailed) {
          return Center(child: Text(state.errorMessage));
        }
        return SizedBox(
          height: 200,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const FeaturedBooksDisplayCard();
            },
            itemCount: 10,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }
}
