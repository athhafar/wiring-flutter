import 'dart:convert';
import 'package:atha_wearing/pages/utilities/helpers.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class HomeServices {
  static Future getNewsEverything() async {
    var response = await http.get(Uri.parse(
        '$baseUrl/everything?q=car&from=2023-08-21&sortBy=publishedAt&apiKey=$API_KEY'));

        
    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
    debugPrint('EROR SERVICES POOST ${json.decode(response.body)}');
    return json.decode(response.body);
  }
}
