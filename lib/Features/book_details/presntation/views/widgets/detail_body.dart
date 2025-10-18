import 'package:bookly/Features/Home/presentation/views/widgets/cards/empty_display_card.dart';
import 'package:bookly/Features/book_details/presntation/views/widgets/details_bar.dart';
import 'package:bookly/core/asset_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        DetailsBar(),
        const SizedBox(height: 50),
        SizedBox(
          height: 200,
          width: 150,
          child: CachedNetworkImage(
            imageUrl: AssetsData.testimage,
            fit: BoxFit.fill,
            placeholder: (context, url) =>
                Container(color: Colors.blueGrey, width: 120, height: 150),
            errorWidget: (context, url, error) =>
                const Icon(Icons.error, color: Colors.white),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'The Jungle Book',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'by Rudyard Kipling',
          style: TextStyle(color: Colors.white70, fontSize: 20),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(width: 60),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: Colors.orange,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
