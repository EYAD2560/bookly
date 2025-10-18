import 'package:bookly/Features/book_details/presntation/views/details_view.dart';
import 'package:bookly/core/asset_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailedDisplayCard extends StatelessWidget {
  const DetailedDisplayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DetailsView()),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 120,
        child: Row(
          children: [
            SizedBox(
              height: double.infinity,
              width: 50,
              child: CachedNetworkImage(
                imageUrl: AssetsData.testimage,
                fit: BoxFit.fill,
                placeholder: (context, url) =>
                    Container(color: Colors.blueGrey, width: 120, height: 150),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'The Jungle Book',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'by Rudyard Kipling',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                SizedBox(height: 5),
                Text(
                  '\$9.99',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
