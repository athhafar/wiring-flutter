import 'package:atha_wearing/pages/controller/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostPage extends StatelessWidget {
  PostPage({Key? key}) : super(key: key);
  PostController controller = Get.put(PostController());

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
              controller: controller.nameController.value,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: controller.titleController.value,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: controller.idController.value,
              decoration: InputDecoration(labelText: 'ID'),
            ),
            SizedBox(height: 16.0), // Spacer
            ElevatedButton(
              onPressed: () {
                controller.postApi();
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