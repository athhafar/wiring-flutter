import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class PostServices {
  static Future postApi(String title, String body, String id) async {
    var response = await http
        .post(Uri.parse('https://jsonplaceholder.typicode.com/posts/'), body: {
      "title": title,
      "body": body,
      "userId": id,
    });

    if (response.statusCode == 201) {
      return json.decode(response.body);
    }
    debugPrint('EROR SERVICES POOST ${json.decode(response.body)}');
    return json.decode(response.body);
  }
}
