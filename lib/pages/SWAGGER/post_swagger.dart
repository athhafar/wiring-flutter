import 'package:atha_wearing/pages/controller/post_controller.dart';
import 'package:atha_wearing/pages/controller/post_swagger_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostSwaggerPage extends StatelessWidget {
  PostSwaggerPage({Key? key}) : super(key: key);
  // PostController controller = Get.put(PostController());
  PostSwaggerController controller = Get.put(PostSwaggerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: controller.firstNameController.value,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextField(
              controller: controller.lastNameController.value,
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            TextField(
              controller: controller.ageController.value,
              decoration: InputDecoration(labelText: 'age'),
            ),
            TextField(
              controller: controller.photoController.value,
              decoration: InputDecoration(labelText: 'photo'),
            ),
            SizedBox(height: 16.0), // Spacer
            ElevatedButton(
              onPressed: () {
                controller.PostSwagger();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
 


 //step nya ngerjain page, services dan controller