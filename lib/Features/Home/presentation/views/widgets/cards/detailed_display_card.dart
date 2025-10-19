import 'package:bookly/Features/book_details/presntation/views/details_view.dart';
import 'package:bookly/core/utilty/asset_data.dart';
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
                children: const [
                  Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis, 
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
                  Row(
                    children: [
                      Text(
                        '\$9.99',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
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