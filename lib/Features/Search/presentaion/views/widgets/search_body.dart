import 'package:bookly/Features/Home/presentation/views/widgets/listviews/detailed_listview.dart';
import 'package:bookly/core/utilty/font_styles.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/return_bottun.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Returnbutton(),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            prefixIcon: Icon(Icons.search),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Best Seller',
          style: Styles.textStyle25.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Expanded(child: DetailedListView()),
      ],
    );
  }
}
