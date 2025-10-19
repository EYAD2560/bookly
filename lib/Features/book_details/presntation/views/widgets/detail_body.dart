import 'package:bookly/Features/Home/presentation/views/widgets/cards/empty_display_card.dart';
import 'package:bookly/Features/book_details/presntation/views/widgets/details_bar.dart';
import 'package:bookly/core/utilty/asset_data.dart';
import 'package:bookly/core/utilty/font_styles.dart';
import 'package:flutter/material.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsBar(),
        const SizedBox(height: 20),
        SizedBox(
          height: 300,
          width: 200,
          child: Image.asset(
            AssetsData.testimage,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error, color: Colors.white),
          ),
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const Text(
          'by Rudyard Kipling',
          style: TextStyle(color: Colors.white70, fontSize: 20),
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon( Icons.star, color: Colors.amber, size: 20),
            SizedBox(width: 2),
            Text('4.5', style: TextStyle(color: Colors.white, fontSize: 18)),
            Text(' (200)', style: TextStyle(color: Colors.white70, fontSize: 16)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: Colors.orange,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: const Text(
                '\$9.99',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Text(
                'Free Preview',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "You may also like",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return EmptyDisplayCard();
                },
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
