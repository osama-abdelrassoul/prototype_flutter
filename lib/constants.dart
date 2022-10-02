import 'package:flutter/material.dart';

double screenHeight =
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;

double screenWidth =
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;

const List<Map<String, String>> categoryImages = [
  {
    'title': 'Mobiles',
    'image': 'assets/images/mobiles.jpeg',
  },
  {
    'title': 'Essentials',
    'image': 'assets/images/essentials.jpeg',
  },
  {
    'title': 'Appliances',
    'image': 'assets/images/appliances.jpeg',
  },
  {
    'title': 'Books',
    'image': 'assets/images/books.jpeg',
  },
  {
    'title': 'Fashion',
    'image': 'assets/images/fashion.jpeg',
  },
  {
    'title': 'Mobiles',
    'image': 'assets/images/mobiles.jpeg',
  },
];
