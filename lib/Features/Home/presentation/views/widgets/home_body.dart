import 'package:bookly/Features/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/listviews/detailed_listview.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/listviews/empty_listview.dart';
import 'package:bookly/core/utilty/font_styles.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            const SizedBox(height: 20),
            EmptyListView(),
            SizedBox(height: 20),
            Text(
              'Best Seller',
              style: Styles.textStyle25.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            DetailedListView(),
          ],
        ),
      ),
    );
  }
}
