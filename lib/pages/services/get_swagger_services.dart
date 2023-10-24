import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SwaggerServices {
  static Future getSwagger() async {
    var response =
        await http.get(Uri.parse('https://contact.herokuapp.com/contact'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      debugPrint('ERROR GETNEWSEVERYTHING ${json.decode(response.body)}');
      return json.decode(response.body);
    }
  }
}
