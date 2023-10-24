import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostSwaggerServices {
  static Future postSwagger(
      String firstName, String lastName, String age, String photo) async {
        debugPrint(firstName + lastName + age + photo);
    var response = await http.post(
      Uri.parse('https://contact.herokuapp.com/contact'),
      body: {
        "firstName": firstName,
        "lastName": lastName,
        "age": age,
        "photo": photo
      },
    );

    if (response.statusCode == 201) {
      debugPrint("${response.statusCode}");
      return "success";
    }
    debugPrint('EROR SERVICES POOST ${json.decode(response.body)}');
    return 'failed';
  }
}
