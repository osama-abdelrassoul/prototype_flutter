import 'package:flutter/material.dart';

import 'package:prototype_flutter/constants/constants.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.1,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryImages.length,
          itemBuilder: ((context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: screenWidth * 0.18,
                  height: screenHeight * 0.073,
                  padding: const EdgeInsets.only(left: 10),
                  child: Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(screenHeight * 0.055),
                      child: Image.asset(
                        categoryImages[index]['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text(
                  categoryImages[index]['title']!,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w400),
                )
              ],
            );
          })),
    );
  }
}
