import 'package:bookly/Features/Home/presentation/maneger/simllar_books/smillar_books_cubit.dart';
import 'package:bookly/Features/book_details/presntation/views/widgets/you_may_like_listview_item.dart';
import 'package:bookly/core/utilty/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You may also like",
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: BlocBuilder<SmillarBooksCubit, SmillarBooksState>(
            builder: (context, state) {
             {}  if (state is SmillarBooksLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state is SmillarBooksFailur) {
                  return Center(
                    child: Text(
                      state.errorMessage,
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                }

                if (state is SmillarBooksSuccess) {
                  return ListView.builder(
                    itemCount: state.books.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return YouMayLikeListViewItem(
                        imageUrl:
                            state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                            '',
                      );
                    },
                  );
                }
                return const SizedBox(
                  height: 150,
                  child: Center(child: Text('No data')),
                );
            },
          ),
        ),
      ],
    );
  }
}
