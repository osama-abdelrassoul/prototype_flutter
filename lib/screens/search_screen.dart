import 'package:flutter/material.dart';
import 'package:prototype_flutter/screens/widgets/custom_app_bar.dart';
import 'package:prototype_flutter/screens/widgets/custom_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        hasBackButton: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: CustomView(),
      ),
    );
  }
}
