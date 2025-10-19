import 'package:flutter/material.dart';

abstract class Styles {
  // Font family name. Make sure this matches the `family:` value in pubspec.yaml.
  static const String kGtSectraFine = 'GT Sectra Fine';

  static const TextStyle textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: kGtSectraFine,
  );

  static const TextStyle textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: kGtSectraFine,
  );

  static const TextStyle textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: kGtSectraFine,
  );

  static const TextStyle textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: kGtSectraFine,
  );

  static const TextStyle textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: kGtSectraFine,
  );
}