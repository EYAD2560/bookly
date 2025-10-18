import 'package:bookly/Features/Home/presentation/views/widgets/cards/empty_display_card.dart';
import 'package:flutter/material.dart';

class DetailedListView extends StatelessWidget {
  const DetailedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: EmptyDisplayCard(),
            );
          },
          itemCount: 10,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}