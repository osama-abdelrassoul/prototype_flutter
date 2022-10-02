import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prototype_flutter/constants/dummy_data.dart';
import 'package:prototype_flutter/screens/product_screen.dart';

import '../constants/constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.95,
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
