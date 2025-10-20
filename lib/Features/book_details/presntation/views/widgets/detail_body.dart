import 'package:bookly/Features/Home/presentation/views/widgets/cards/empty_display_card.dart';
import 'package:bookly/Features/book_details/presntation/views/widgets/action_button.dart';
import 'package:bookly/Features/book_details/presntation/views/widgets/details_bar.dart';
import 'package:bookly/core/utilty/asset_data.dart';
import 'package:bookly/core/utilty/font_styles.dart';
import 'package:flutter/material.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
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
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            'by Rudyard Kipling',
            style: Styles.textStyle20.copyWith(color: Colors.white70),
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber, size: 20),
              SizedBox(width: 2),
              Text('4.5', style: Styles.textStyle18),
              Text(
                ' (200)',
                style: Styles.textStyle16.copyWith(color: Colors.white70),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ActionButtons(),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("You may also like", style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}

