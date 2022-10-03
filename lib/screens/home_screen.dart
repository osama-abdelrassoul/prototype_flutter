import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:prototype_flutter/constants/constants.dart';
import 'package:prototype_flutter/screens/widgets/custom_app_bar.dart';
import 'package:prototype_flutter/screens/widgets/custom_view.dart';
import 'package:prototype_flutter/screens/widgets/top_categories.dart';
import 'package:prototype_flutter/networking/netwroking.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map? map;

  getData() async {
    String response = await Networking().getData();
    map = json.decode(response);
    setState(() {});
    return map;
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const TopCategories(),
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
            child: map == null
                ? CircularProgressIndicator()
                : CustomView(response: map),
          )
        ],
      ),
    );
  }
}
