import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/post_controller.dart';

class PostMethod extends StatelessWidget {
  const PostMethod({super.key});

  @override
  Widget build(BuildContext context) {
    PostController postController = Get.put(PostController());
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 50),
            TextField(
              onChanged: (value) {
                postController.userId.value = value;
              },
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'enter userId',
              ),
            ),
            TextField(
              onChanged: (value) {
                postController.title.value = value;
              },
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'enter title',
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  postController.post();
                },
                style: TextButton.styleFrom(backgroundColor: Colors.black12),
                child: const Text('Post'))
          ],
        ),
      ),
    );
  }
}
