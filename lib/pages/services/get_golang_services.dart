import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future getListApi() async {
    var response = await http.get(
      Uri.parse('http://127.0.0.1:8080/api/products'),
    );
    debugPrint("${response}");

    debugPrint("${response.body} <<<<<<<<<<<<<<<<"); // Menggunakan $ untuk mencetak isi response.body
    if (response.statusCode == 200) {

      return json.decode(response.body);
    } else {
      debugPrint(
          'EROR GET LIST ${response.reasonPhrase}'); // Menggunakan response.reasonPhrase untuk pesan kesalahan
      return json.decode(response.body);
    }
  }
}
