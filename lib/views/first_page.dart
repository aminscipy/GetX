import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.find();
    return Scaffold(
      appBar: AppBar(title: const Text('GetX')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: GetBuilder<TapController>(
            builder: (_) {
              return Text('x = ${tapController.x.toString()}');
            },
          )),
          Obx(() {
            return Text('y = ${tapController.y.toString()}');
          }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  tapController.decreaseX();
                },
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey,
                  ),
                  child: const Center(child: Text('Decrease x')),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  tapController.decreaseY();
                },
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey,
                  ),
                  child: const Center(child: Text('Decrease y')),
                )),
          ),
        ],
      ),
    );
  }
}
