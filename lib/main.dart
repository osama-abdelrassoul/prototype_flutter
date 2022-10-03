import 'package:flutter/material.dart';
import 'package:prototype_flutter/screens/home_screen.dart';
import 'package:prototype_flutter/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
