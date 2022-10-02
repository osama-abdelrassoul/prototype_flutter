import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prototype_flutter/constants/dummy_data.dart';
import 'package:prototype_flutter/screens/product_screen.dart';
import 'package:prototype_flutter/screens/widgets/custom_app_bar.dart';

import '../constants/constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        hasBackButton: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: screenWidth / screenHeight * 1.8,
            ),
            itemCount: kDummyProducts.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (_) => ProductScreen(
                        product: kDummyProducts[index],
                      ),
                    ),
                  );
                },
                child: SizedBox(
                  height: screenHeight * 0.4,
                  width: screenWidth * 0.4,
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: NetworkImage(kDummyProducts[index].image),
                        )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            kDummyProducts[index].name,
                          ),
                          Text(
                            kDummyProducts[index].price.toString(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
