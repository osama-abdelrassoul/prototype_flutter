import 'package:flutter/cupertino.dart';
import 'package:prototype_flutter/constants/constants.dart';
import 'package:prototype_flutter/screens/product_screen.dart';

import '../../models/product.dart';

class CustomView extends StatelessWidget {
  const CustomView({
    Key? key,
    this.response,
  }) : super(key: key);
  final response;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: screenWidth / screenHeight * 1.8,
      ),
      itemCount: response['items'].length,
      itemBuilder: (context, index) {
        Product product = Product.fromMap(response['items'][index]);

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (_) => ProductScreen(
                  product: product,
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
                    image: NetworkImage(product.imageURL),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      product.title,
                    ),
                    Text(
                      product.price.toString(),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
