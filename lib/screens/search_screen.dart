import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:prototype_flutter/screens/widgets/custom_app_bar.dart';
import 'package:prototype_flutter/screens/widgets/custom_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var response;

  updateResponse(var newResposne) {
    setState(() {
      response = newResposne;
    });
  }

  @override
  Widget build(BuildContext context) {
    Map? map;
    if (response != null) {
      map = json.decode(response);
    }
    return Scaffold(
      appBar: CustomAppBar(
        hasBackButton: true,
        callback: updateResponse,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: map == null
            ? CircularProgressIndicator()
            : CustomView(
                response: map,
              ),
      ),
    );
  }
}
