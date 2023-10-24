import 'package:atha_wearing/pages/controller/movie_controlller.dart';
import 'package:atha_wearing/pages/home/widgets/card_news.dart';
import 'package:atha_wearing/pages/movie/detail_movie_page.dart';
import 'package:atha_wearing/pages/movie/search_movie_page.dart';
import 'package:atha_wearing/pages/utilities/colors.dart';
import 'package:atha_wearing/pages/utilities/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../button/button_action.dart';
import '../widgets/appbar_default.dart';

class HomeMovie extends StatelessWidget {
  HomeMovie({super.key});

  MovieController controller = Get.put(MovieController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kColorNeutral1,
        body: Column(
          children: [
            AppBarDefault(
              title: "Tes 123",
              withLeading: false,
              actions: [
                ButtonAction(
                  onTap: () {
                    Get.to(() => SearchPage());
                  },
                  child: Icon(Icons.search),
                )
              ],
            ),
            // Container(),
            // Text(controller.listMovie[0].title),
            Obx(() => controller.loadingMovie.value
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.builder(
                          itemCount: controller.listMovie.length,
                          itemBuilder: (context, index) {
                            // return Column(
                            //   children: [
                            //     Text(
                            //       controller.listMovie[index].title,
                            //     ),
                            //     Text(
                            //       controller.listMovie[index].originalTitle,
                            //     ),
                            //     Image.network(baseImage +
                            //         controller.listMovie[index].backdropPath),
                            //   ],
                            // );
                            return CardNews(
                                image: baseImage +
                                    controller.listMovie[index].backdropPath,
                                jobTitle: controller.listMovie[index].title,
                                company:
                                    controller.listMovie[index].releaseDate,
                                jobTypes:
                                    controller.listMovie[index].releaseDate,
                                location: controller.listMovie[index].overview,
                                workSettings: controller
                                    .listMovie[index].originalLanguage,
                                time: controller.listMovie[index].originalTitle,
                                onTap: () {
                                  Get.to(() => DetailMoviePage(),
                                      arguments:
                                          controller.listMovie[index].id);
                                });
                          }),
                    ),
                  ))
          ],
        ));
  }
}
