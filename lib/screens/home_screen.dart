import 'package:flutter/material.dart';
import 'package:prototype_flutter/constants/constants.dart';
import 'package:prototype_flutter/screens/widgets/custom_app_bar.dart';
import 'package:prototype_flutter/screens/widgets/custom_view.dart';
import 'package:prototype_flutter/screens/widgets/top_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.01,
          ),
          const TopCategories(),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF00b09b),
                  Color(0xFF96c93d),
                ],
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            width: screenWidth * 0.9,
            height: screenHeight * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Enjoy',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
                Text(
                  'Cashback 20%',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.015,
          ),
          const Text(
            "Top Products",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen),
          ),
          SizedBox(
            height: screenHeight * 0.6,
            width: double.infinity,
            child: const CustomView(),
          )
        ],
      ),
    );
  }
}
