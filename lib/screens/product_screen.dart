import 'package:flutter/material.dart';
import 'package:prototype_flutter/constants/dummy_data.dart';
import 'package:prototype_flutter/models/product.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants/constants.dart';
import 'widgets/custom_app_bar.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        hasBackButton: true,
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
                    product.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    product.category.toString(),
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
                    image: NetworkImage(product.imageURL),
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
                    initialRating: product.rating,
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
              SizedBox(
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
                                  kDummyProducts[index].imageURL,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(kDummyProducts[index].title),
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
