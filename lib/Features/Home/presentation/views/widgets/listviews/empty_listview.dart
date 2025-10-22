import 'package:bookly/Features/Home/presentation/views/widgets/cards/empty_display_card.dart';
import 'package:flutter/material.dart';

class EmptyListView extends StatelessWidget {
  const EmptyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return EmptyDisplayCard();
        },
        itemCount: 10,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
