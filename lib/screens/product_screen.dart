import 'package:flutter/material.dart';
import 'package:prototype_flutter/models/product.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants/constants.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(product.name),
                  RatingBar(
                    ratingWidget: ratingWidget,
                    onRatingUpdate: (_) {},
                    initialRating: 3.5,
                    allowHalfRating: true,
                    ignoreGestures: true,
                    itemSize: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
