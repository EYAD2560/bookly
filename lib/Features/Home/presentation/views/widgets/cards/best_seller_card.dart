import 'package:bookly/Features/Home/data/book_model/book_model.dart';
import 'package:bookly/constans.dart';
import 'package:bookly/core/utilty/font_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/detailesView'),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: double.infinity,
          height: 150,
          child: Row(
            children: [
              SizedBox(
                height: double.infinity,
                width: 100,
                child: CachedNetworkImage(
                  imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? '',
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    book.volumeInfo?.title ?? 'Unknown',
                    style: Styles.textStyle30.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    book.volumeInfo?.authors?.first ?? 'Unknown',
                    style: Styles.textStyle16.copyWith(color: Colors.white70),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 100),
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      SizedBox(width: 2),
                      Text(
                        book.volumeInfo?.averageRating?.toString() ?? '0',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        book.volumeInfo?.ratingsCount != null
                            ? ' (${book.volumeInfo?.ratingsCount})'
                            : ' (0)',
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
