import 'package:flutter/material.dart';
import 'package:prototype_flutter/constants/constants.dart';
import 'package:prototype_flutter/screens/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
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
