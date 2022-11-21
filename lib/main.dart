import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/views/second_page.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ApiDemo(),
    );
  }
}
