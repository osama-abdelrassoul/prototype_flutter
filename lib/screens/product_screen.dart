import 'package:flutter/material.dart';
import 'package:prototype_flutter/constants/dummy_data.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    product.category,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Container(
                height: screenHeight * 0.5,
                width: screenWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(product.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.price.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  RatingBar(
                    ratingWidget: ratingWidget,
                    onRatingUpdate: (_) {},
                    initialRating: 3.5,
                    allowHalfRating: true,
                    ignoreGestures: true,
                    itemSize: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Desription',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(product.description),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Recommend for You',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Container(
                height: screenWidth * 0.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: kDummyProducts.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: screenHeight * 0.2,
                            width: screenWidth * 0.5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: NetworkImage(
                                  kDummyProducts[index].image,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(kDummyProducts[index].name),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(kDummyProducts[index].price.toString()),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
