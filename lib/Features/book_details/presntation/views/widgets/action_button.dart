import 'package:bookly/Features/Home/data/book_model/book_model.dart';
import 'package:bookly/Features/book_details/presntation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ...existing code...
class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: 'Free',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
        ),
        const SizedBox(width: 1),
        Expanded(
          child: GestureDetector(
            onTap: () async {
              final String? link = book.volumeInfo?.previewLink;
              if (link == null || link.isEmpty) return;
              final Uri uri = Uri.parse(link);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            child: CustomButton(
              text: 'Free Preview',
              backgroundColor: Colors.deepOrange,
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// ...existing code...