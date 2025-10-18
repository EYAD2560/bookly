import 'package:bookly/Features/book_details/presntation/views/widgets/detail_body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: const DetailBody()));
  }
}
