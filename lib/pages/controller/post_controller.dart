import 'package:atha_wearing/pages/API-GOLANG/tampil.dart';
import 'package:atha_wearing/pages/services/post_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  var titleController = TextEditingController().obs;
  var nameController = TextEditingController().obs;
  var idController = TextEditingController().obs;
  var loadingPost = false.obs;

  void postApi() async {
    loadingPost.value = true;
    try {
      var data = await PostServices.postApi(titleController.value.text,
      nameController.value.text,idController.value.text);
        //  nameController.value.text, int.parse(idController.value.text));
      if (data != null) {
        int dataObjek = data['id'];
        Get.to(() => TampilPage(
          id: dataObjek,
        )
        );
      }
    } catch (e) {
      loadingPost.value = false;
      debugPrint("POSTCONTOROLLERERR : ${e.toString()}");
    }

    // Fungsi yang akan dipanggil saat tombol submit ditekan
    // void submitForm() {
    //   final String name = nameController.text;
    //   final String title = titleController.text;
    //   final String id = idController.text;

    //   // Lakukan sesuatu dengan data yang dimasukkan, misalnya kirim ke API
    //   print('Name: $name');
    //   print('Title: $title');
    //   print('ID: $id');
    // }
  }
}
