import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/news_controller.dart';

Expanded newsModel(NewsController newsController) {
  return Expanded(
    child: Obx(() {
      return ListView.builder(
          itemCount: newsController.newsList.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                  // Get.to(() => FullNews(
                  //       imageUrl: newsController.newsList[index]
                  //                   ['urlToImage'] ==
                  //               ''
                  //           ? ''
                  //           : newsController.newsList[index]
                  //               ['urlToImage'],
                  //       content: newsController.newsList[index]
                  //                   ['content'] ==
                  //               ''
                  //           ? ''
                  //           : newsController.newsList[index]
                  //               ['content'],
                  //     ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.black12),
                  child: Column(
                    children: [
                      // SizedBox(
                      //   height: 200,
                      //   width: double.infinity,
                      //   child: newsController.newsList[index]
                      //               ['urlToImage'] ==
                      //           null
                      //       ? null
                      //       : Image(
                      //           fit: BoxFit.cover,
                      //           image: NetworkImage(newsController
                      //               .newsList[index]['urlToImage']
                      //               .toString())),
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: Text(
                          newsController.newsList[index]['title'] == null
                              ? ''
                              : newsController.newsList[index]['title']
                                  .toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: Text(
                          newsController.newsList[index]['content'] == null
                              ? ''
                              : newsController.newsList[index]['content']
                                  .toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }));
    }),
  );
}
