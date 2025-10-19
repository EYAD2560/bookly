import 'package:bookly/constans.dart';
import 'package:bookly/core/utilty/asset_data.dart';
import 'package:bookly/core/utilty/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key});

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
                child: Image.asset(
                  AssetsData.testimage,
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error, color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    'The Jungle Book',
                    style: Styles.textStyle30.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'by Rudyard Kipling',
                    style: Styles.textStyle16.copyWith(color: Colors.white70),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        '\$9.99',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 100),
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      SizedBox(width: 2),
                      Text(
                        '4.5',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        ' (200)',
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
