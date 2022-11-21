// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NewsController extends GetxController {
  var newsList = [].obs;

  var topic = 'flutter'.obs;

  @override
  void onInit() {
    fetch();
    super.onInit();
  }

  fetch() async {
    try {
      var response = await http.get(Uri.parse(
          'https://newsdata.io/api/1/news?apikey=pub_136572c3996f8804f8a77cd0b368eb06cbbfe&q=$topic&language=en'));
      if (response.statusCode == 200) {
        var news = jsonDecode(response.body);
        newsList.value = news['results'];
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }
}
