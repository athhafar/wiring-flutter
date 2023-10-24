import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:atha_wearing/pages/model/detail_movie_model.dart';
import 'package:atha_wearing/pages/model/get_golang_model.dart';
import 'package:atha_wearing/pages/model/home_movie_model.dart';
import 'package:atha_wearing/pages/services/detail_movie_services.dart';
import 'package:atha_wearing/pages/services/get_golang_services.dart';
import 'package:atha_wearing/pages/services/movie_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetController extends GetxController {
  var listGet = <Products>[].obs;
  var loadingGet = false.obs;

  @override
  void onInit() {
    super.onInit();
    getListApi();
  }

  void getListApi() async {
    loadingGet.value = true;
    try {
      // var data = await ApiServices.getListApi();
      final response = await http.get(Uri.parse("http://localhost:8080/api/products"));
      // if (data['products'] != null) {
      //   var dataList = data['products'] as List;
      //   debugPrint("tesget $dataList");
      //   List<Products> list =
      //       dataList.map((asu) => Products.fromJson(asu)).toList();
      //   listGet.value = list;
      //   loadingGet.value = false;
      // } else {
      //   loadingGet.value = false;
      // }
      if (response.statusCode == 200){
        debugPrint(json.decode(response.body));
      }
    } catch (e) {
      loadingGet.value = false;
      debugPrint('EROR PRODUCT CONTROLLLEER : ${e.toString()}');
    }
  }
}
