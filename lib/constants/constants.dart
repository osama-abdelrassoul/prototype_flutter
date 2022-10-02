import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

final double screenHeight =
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;

final double screenWidth =
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;

final RatingWidget ratingWidget = RatingWidget(
  full: const Icon(
    Icons.star,
    color: Colors.amber,
  ),
  half: const Icon(
    Icons.star_half,
    color: Colors.amber,
  ),
  empty: const Icon(
    Icons.star,
    color: Colors.grey,
  ),
);
