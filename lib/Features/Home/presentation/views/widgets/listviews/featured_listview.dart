// ...existing imports...
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
        }

        if (state is FeaturedBooksFailed) {
          return Center(
            child: Text(
              state.errorMessage,
              style: const TextStyle(color: Colors.red),
            ),
          );
        }

        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: state.books.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FeaturedBooksDisplayCard(
                  imageUrl:
                      state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                      '',
                );
              },
            ),
          );
        }
        return const SizedBox(
          height: 200,
          child: Center(child: Text('No data')),
        );
      },
    );
  }
}
