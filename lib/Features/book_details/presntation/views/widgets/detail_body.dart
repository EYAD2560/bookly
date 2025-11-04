import 'package:bookly/Features/Home/data/book_model/book_model.dart';
import 'package:bookly/Features/book_details/presntation/views/widgets/action_button.dart';
import 'package:bookly/Features/book_details/presntation/views/widgets/details_bar.dart';
import 'package:bookly/Features/book_details/presntation/views/widgets/sections/similar.dart';
import 'package:bookly/core/utilty/font_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsBar(),
        const SizedBox(height: 20),
        SizedBox(
          height: 300,
          width: 200,
          child: CachedNetworkImage(
            imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? '',
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        Text(
          book.volumeInfo?.title ?? 'Unknown',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          book.volumeInfo?.authors?.first ?? 'Unknown',
          style: Styles.textStyle20.copyWith(color: Colors.white70),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.amber, size: 20),
            SizedBox(width: 2),
            Text(book.volumeInfo?.averageRating as String, style: Styles.textStyle18),
            Text(
              ' (${book.volumeInfo?.ratingsCount ?? '0'})',
              style: Styles.textStyle16.copyWith(color: Colors.white70),
            ),
          ],
        ),
        const SizedBox(height: 10), 
        ActionButtons(),
        const SizedBox(height: 10),
        SimilarBooksSection(),
      ],
    );
  }
}
