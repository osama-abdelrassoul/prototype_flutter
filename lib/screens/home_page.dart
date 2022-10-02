import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:prototype_flutter/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.07),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[100],
                  ),
                  width: screenWidth * 0.7,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Colors.blueGrey),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: screenWidth * 0.45,
                          child: const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: const Icon(Icons.shopping_cart,
                        color: Colors.blueGrey)),
                CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child:
                        const Icon(Icons.notifications, color: Colors.blueGrey))
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Container(
              color: Colors.red,
              width: screenWidth * 0.8,
              height: screenHeight * 0.15,
            )
          ],
        ),
      ),
    );
  }
}
