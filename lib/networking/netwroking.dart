import 'dart:developer';

import 'package:http/http.dart' as http;

class Networking {
  String baseUrl = 'http://10.0.2.2:5000/api/';

  Future getData() async {
    var respond;
    try {
      respond = await http.get(Uri.parse('$baseUrl/home'));
    } catch (e) {
      log(e.toString());
    }
    return respond.body;
  }

  Future search(String query) async {
    var response;
    try {
      response = await http.get(Uri.parse('$baseUrl/search/$query'));
    } catch (e) {
      log(e.toString());
    }
    return response.body;
  }
}
