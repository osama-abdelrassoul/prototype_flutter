import 'package:flutter/material.dart';
import 'package:prototype_flutter/constants/constants.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.hasBackButton = false,
  }) : super(key: key);
  final bool hasBackButton;

  @override
  Size preferredSize = Size.fromHeight(screenHeight * 0.07);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: hasBackButton
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
              )
            : null,
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
                width: hasBackButton ? screenWidth * 0.55 : screenWidth * 0.7,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.blueGrey),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: hasBackButton
                            ? screenWidth * 0.25
                            : screenWidth * 0.45,
                        child: const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child:
                      const Icon(Icons.shopping_cart, color: Colors.blueGrey)),
              CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child:
                      const Icon(Icons.notifications, color: Colors.blueGrey))
            ],
          ),
        ),
      ),
    );
  }
}
