import 'dart:async';

import 'package:atha_wearing/pages/home/widgets/card_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constant/assets_decoration.dart';
import '../button/button_action.dart';
import '../controller/search_movie_controller.dart';
import '../utilities/colors.dart';
import '../utilities/helpers.dart';
import '../utilities/typhography.dart';
import 'detail_movie_page.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  final TextEditingController textFieldController = TextEditingController();
  final SearchMovieController controller = Get.put(SearchMovieController());
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorNeutral1,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 24, bottom: 16),
              decoration: BoxDecoration(
                color: kColorNeutral1,
                boxShadow: [
                  BoxShadow(
                    color: kColorNeutral10.withOpacity(0.1),
                    offset: const Offset(0, 0.5),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 18),
                    child: ButtonAction(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/3031/3031293.png',
                        width: 24,
                        color: kColorNeutral10,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 18, right: 16, left: 16),
                          decoration: BoxDecoration(
                            color: kColorNeutral1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            controller: textFieldController,
                            decoration: kInputDecoration.copyWith(
                              hintText: 'Cari pengunjung di sini',
                              prefixIcon: Container(
                                margin: EdgeInsets.only(
                                    left: 16, top: 12, bottom: 12, right: 8),
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/3031/3031293.png',
                                  color: kColorNeutral5,
                                  width: 16,
                                  height: 16,
                                ),
                              ),
                              suffixIcon: Container(
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(60),
                                    onTap: () {
                                      controller.searchMovieModel.clear();
                                      textFieldController.clear();
                                      controller.valueSearch.value = '';

                                      FocusScopeNode currentFocus =
                                          FocusScope.of(context);
                                      if (!currentFocus.hasPrimaryFocus) {
                                        currentFocus.unfocus();
                                      }
                                      controller.searchValue();
                                    },
                                    child: Obx(
                                      () => Container(
                                        margin: EdgeInsets.only(
                                            top: 12, bottom: 12),
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/3031/3031293.png',
                                          width: 12,
                                          height: 12,
                                          color: controller
                                                  .valueSearch.value.isNotEmpty
                                              ? kColorNeutral5
                                              : kColorNeutral2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onChanged: (value) {
                              if (_timer?.isActive ?? false) _timer?.cancel();
                              _timer =
                                  Timer(const Duration(milliseconds: 300), () {
                                controller.valueSearch.value = value;
                                controller.searchValue();
                              });
                            },
                            style: TStyle.body1,
                            cursorColor: kColorNeutral10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Obx(
              () => controller.loadingMovie.value
                  ? const Center(child: CircularProgressIndicator())
                  : controller.searchMovieModel.isEmpty
                      ? // Data tidak ditemukan
                      Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    SizedBox(height: 16),
                                    Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/3031/3031293.png',
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      'Tidak ditemukan pengunjung yang kamu cari',
                                      style: TStyle.captionRegular
                                          .copyWith(color: kColorNeutral5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      : // Data ditemukan, tampilkan CardNews
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16, top: 16),
                              child: Text(
                                '${controller.searchMovieModel.value.length} ditemukan',
                                style: TStyle.body1,
                              ),
                            ),
                            const SizedBox(height: 12),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              itemCount:
                                  controller.searchMovieModel.value.length,
                              itemBuilder: (BuildContext context, int index) {
                                return CardNews(
                                  image: baseImage +
                                      controller
                                          .searchMovieModel[index].posterPath,
                                  jobTitle: controller
                                      .searchMovieModel[index].originalLanguage,
                                  company: controller
                                      .searchMovieModel[index].releaseDate,
                                  jobTypes: controller
                                      .searchMovieModel[index].releaseDate,
                                  location: controller
                                      .searchMovieModel[index].overview,
                                  workSettings: controller
                                      .searchMovieModel[index].originalLanguage,
                                  time: controller
                                      .searchMovieModel[index].originalTitle,
                                  onTap: () {
                                    Get.to(() => DetailMoviePage(),
                                        arguments: controller
                                            .searchMovieModel[index].id);
                                  },
                                );
                              },
                            ),
                          ],
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
