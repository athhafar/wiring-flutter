import 'package:atha_wearing/pages/model/search_movie_model.dart';
import 'package:atha_wearing/pages/services/search_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchMovieController extends GetxController {
  var searchMovieModel = <SearchModel>[].obs;
  var valueSearch = ''.obs;
  var loadingMovie = false.obs;

  @override
  void onInit() {
    searchValue();
    super.onInit();
  }

  void searchValue() async {
    loadingMovie.value = true;
    try {
      var data = await SearchServices.getSearch(valueSearch);
      if (data['results'] != null) {
        var dataSearch = data['results'] as List;
        debugPrint('tessearch $dataSearch');
        List<SearchModel> list =
            dataSearch.map((e) => SearchModel.fromJson(e)).toList();
        searchMovieModel.value = list;
        loadingMovie.value = false;
      } else {
        loadingMovie.value = false;
      }
      // searchMovieModel.value = SearchModel.fromJson(data)
    } catch (e) {
      loadingMovie.value = false;
      debugPrint('EROR SEEARCH MOVIE : ${e.toString()}');
    }
  }
}
