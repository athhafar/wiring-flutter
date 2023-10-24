import 'package:atha_wearing/pages/SWAGGER/get_swagger.dart';
import 'package:atha_wearing/pages/SWAGGER/tampil_post_page.dart';
import 'package:atha_wearing/pages/services/post_swagger_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../API-GOLANG/tampil.dart';

class PostSwaggerController extends GetxController {
  var firstNameController = TextEditingController().obs;
  var lastNameController = TextEditingController().obs;
  var ageController = TextEditingController().obs;
  var photoController = TextEditingController().obs;
  var loadingPostSwagger = false.obs;

  void PostSwagger() async {
    loadingPostSwagger.value = true;
    try {
      var data = await PostSwaggerServices.postSwagger(
          firstNameController.value.text,
          lastNameController.value.text,
          ageController.value.text,
          photoController.value.text);

      if (data == 'success') {
        Get.to(
          () => GetSwaggerPage(),
        );
      }
    } catch (e) {
      debugPrint('failed to post data');
    }
  }
}
