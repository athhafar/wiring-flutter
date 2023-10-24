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
import '../controller/get_golang_controller.dart';
import '../home/widgets/card_api.dart';
import '../utilities/typhography.dart';
import '../widgets/appbar_default.dart';

class GetAPi extends StatelessWidget {
  GetAPi({super.key});

  // MovieController controller = Get.put(MovieController());
  GetController getController = Get.put(GetController());
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
            Obx(() => getController.loadingGet.value
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: ListView.builder(
                          itemCount: getController.listGet.length,
                          itemBuilder: (context, index) {
                            return CardApi(
                                jobTitle:
                                    getController.listGet[index].namaProduct,
                                company:
                                    getController.listGet[index].deskripsi);
                          }),
                    ),
                  ))
          ],
        ));
  }
}
