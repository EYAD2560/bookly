import 'package:bookly/Features/Home/data/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/maneger/simllar_books/smillar_books_cubit.dart';
import 'package:bookly/Features/book_details/presntation/views/widgets/detail_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.book});
  final BookModel book;
  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SmillarBooksCubit>(context).fetchSimilarBooks(
      category: widget.book.volumeInfo?.categories?.first ?? '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.black, body: const DetailBody()),
    );
  }
}
