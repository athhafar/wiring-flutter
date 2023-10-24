import 'package:atha_wearing/pages/model/everything_model.dart';
import 'package:atha_wearing/pages/services/home_services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var loadingNews = false.obs;
  var listNewsEverything = <Articles>[].obs;

  @override
  void onInit() {
    super.onInit();
    getNewsEverything();
  }

  void getNewsEverything() async {
    loadingNews.value = true;  
    try {
      var data = await HomeServices.getNewsEverything();
      if (data['status'] == 'ok') {
        var dataList = data['articles'] as List;
        debugPrint('');
        List<Articles> list = dataList.map((e) => Articles.fromJson(e)).toList();
        listNewsEverything.value = list; 
        loadingNews.value = false;
      } else {
        loadingNews.value = false;
      }
    } catch (e) {
      loadingNews.value = false;
      debugPrint("NEWSEVERYTHINGERRR : ${e.toString()}");
    }
  }
}
