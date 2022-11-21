// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PostController extends GetxController {
  var title = 'amin'.obs;
  var userId = '101'.obs;

  post() async {
    var response = await http.post(
        Uri.parse('https://jsonplaceholder.typicode.com/albums'),
        body: {'title': title.value, 'userId': userId.value});
    if (response.statusCode == 201) {
      print(response.body);
    } else {
      //
    }
  }
}
