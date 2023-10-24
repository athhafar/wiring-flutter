import 'package:atha_wearing/pages/controller/detail_movie_controller.dart';
import 'package:atha_wearing/pages/utilities/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/movie_controlller.dart';
import '../widgets/appbar_default.dart';

class DetailMoviePage extends StatelessWidget {
  DetailMoviePage({super.key});

  DetailMovieController controller = Get.put(DetailMovieController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const AppBarDefault(
          title: "Tes 123",
          withLeading: false,
        ),
        Obx(
          () => controller.loadingMovie.value
              ? const Center(child: CircularProgressIndicator())
              : Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(16),
                        child: Text(
                          '${controller.detailMovietModel.value?.title}',
                        ),
                      ),
                      Image.network(
                          '${controller.baseImage}${controller.detailMovietModel.value?.posterPath}'),
                      Text('${controller.detailMovietModel.value?.overview}'),
                    ],
                  ),
                ),
        ),
      ]),
    );
  }
}
