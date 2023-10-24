import 'package:atha_wearing/pages/controller/get_swagger_controller.dart';
import 'package:atha_wearing/pages/home/widgets/card_news.dart';
import 'package:atha_wearing/pages/utilities/colors.dart';
import 'package:atha_wearing/pages/widgets/appbar_default.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetSwaggerPage extends StatelessWidget {
  GetSwaggerPage({super.key});

  SwaggerController controller = Get.put(SwaggerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorNeutral0,
      body: Column(
        children: [
          AppBarDefault(title: 'GET SWAGGER'),
          Obx(
            () => controller.loadingSwagger.value
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                    child: Container(
                      margin: EdgeInsets.all(16),
                      child: ListView.builder(
                        itemCount: controller.listSwagger.length,
                        itemBuilder: (context, index) {
                          return CardNews(
                              image: '',
                              jobTitle: controller.listSwagger[index].firstName,
                              company: controller.listSwagger[index].lastName,
                              jobTypes: controller.listSwagger[index].age.toString(),
                              location: '',
                              workSettings: '',
                              time: '',
                              onTap: () {});
                        },
                      ),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
