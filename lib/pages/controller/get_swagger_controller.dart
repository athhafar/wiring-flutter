import 'package:atha_wearing/pages/model/detail_movie_model.dart';
import 'package:atha_wearing/pages/model/home_movie_model.dart';
import 'package:atha_wearing/pages/services/detail_movie_services.dart';
import 'package:atha_wearing/pages/services/get_swagger_services.dart';
import 'package:atha_wearing/pages/services/movie_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/get_swagger_model.dart';

class SwaggerController extends GetxController {
  var listSwagger = <Data>[].obs;
  var loadingSwagger = false.obs;

  @override
  void onInit() {
    super.onInit();
    getListSwagger();
  }

  void getListSwagger() async {
    loadingSwagger.value = true;
    try {
      var data = await SwaggerServices.getSwagger();
      if (data['message'] == 'Get contacts' ) {
        var dataList = data['data'] as List;
        debugPrint("tes $dataList");
        List<Data> list =
            dataList.map((asu) => Data.fromJson(asu)).toList();
        listSwagger.value = list;
        loadingSwagger.value = false;
      } else {
        loadingSwagger.value = false;
      }
    } catch (e) {
      loadingSwagger.value = false;
      debugPrint('EROR MOVIE CONTROLLLEER : ${e.toString()}');
    }
  }
}
