import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/ad_controller.dart';
import 'package:getx/controllers/news_controller.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../models/news_model.dart';

class ApiDemo extends StatelessWidget {
  const ApiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    AdController adController = Get.put(AdController());
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (value) {
                  newsController.topic.value = value;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'Search news',
                    suffix: GestureDetector(
                        onTap: () {
                          newsController.fetch();
                        },
                        child: const Icon(
                          Icons.search,
                          color: Colors.blue,
                        ))),
              ),
            ),
            newsModel(newsController),
            Container(
              alignment: Alignment.center,
              width: adController.bannerAd.size.width.toDouble(),
              height: adController.bannerAd.size.height.toDouble(),
              child: AdWidget(ad: adController.bannerAd),
            ),
            TextButton(
                onPressed: () {
                  adController.interstitialAd!.show();
                  adController.interstitialAdvert();
                },
                child: const Text('show ad'))
          ],
        ),
      ),
    );
  }
}
