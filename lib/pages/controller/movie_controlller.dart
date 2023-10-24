import 'package:atha_wearing/pages/model/detail_movie_model.dart';
import 'package:atha_wearing/pages/model/home_movie_model.dart';
import 'package:atha_wearing/pages/services/detail_movie_services.dart';
import 'package:atha_wearing/pages/services/movie_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieController extends GetxController {
  var listMovie = <MovieList>[].obs;
  var loadingMovie = false.obs;

  @override
  void onInit() {
    super.onInit();
    getListMovie();
  }

  void getListMovie() async {
    loadingMovie.value = true;
    try {
      var data = await MovieServices.getListMovie();
      if (data['results'] != null) {
        var dataList = data['results'] as List;
        debugPrint("tes $dataList");
        List<MovieList> list =
            dataList.map((asu) => MovieList.fromJson(asu)).toList();
        listMovie.value = list;
        loadingMovie.value = false;
      } else {
        loadingMovie.value = false;
      }
    } catch (e) {
      loadingMovie.value = false;
      debugPrint('EROR MOVIE CONTROLLLEER : ${e.toString()}');
    }
  }
}
