import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/detail_movie_model.dart';
import '../services/detail_movie_services.dart';

class DetailMovieController extends GetxController {
  var detailMovietModel = Rxn<DetailMovieModel>();
  var loadingMovie = false.obs;
  var selectedID = 0.obs;
  var baseImage = "https://image.tmdb.org/t/p/w500";

  @override
  void onInit() {
    selectedID.value = Get.arguments;
    getDetailMovie();
    super.onInit();
  }

  void getDetailMovie() async {
    loadingMovie.value = true;
    try {
      var data = await DetailMovieServices.getDetailMovie(selectedID);
      detailMovietModel.value = DetailMovieModel.fromJson(data);
      // debugPrint('tesdetail ' $DetailMovieModel);
      loadingMovie.value = false;
    } catch (e) {
      loadingMovie.value = false;
      debugPrint('EROR MOVIE CONTROLLLEER : ${e.toString()}');
    }
  }
}
