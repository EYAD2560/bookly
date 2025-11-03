// ...existing code...
import 'package:bookly/Features/Home/data/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/maneger/newest_books/newest_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/cards/best_seller_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailedListView extends StatelessWidget {
  const DetailedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is NewestBooksFailed) {
            return Center(
              child: Text(
                state.errorMessage,
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          if (state is NewestBooksSuccess) {
            final books = state.books;
            if (books.isEmpty) {
              return const SizedBox(
                height: 200,
                child: Center(child: Text('No books available')),
              );
            }

            return ListView.builder(
              itemCount: books.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemBuilder: (context, index) {
                final BookModel book = books[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: BestSellerCard(book: book),
                );
              },
            );
          }

          // fallback for initial/other states
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
// ...existing code...