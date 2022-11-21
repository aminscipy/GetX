import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/tap_controller.dart';
import 'package:getx/views/first_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController tapController = Get.put(TapController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<TapController>(
                builder: (_) {
                  return Text('x = ${tapController.x.toString()}');
                },
              ),
              Obx(() {
                return Text('y = ${tapController.y.toString()}');
              }),
              Obx(() {
                return Text('total = ${tapController.z.toString()}');
              }),
              Obx(() {
                return Text(tapController.total.toString());
              }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () {
                      tapController.increaseX();
                    },
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey,
                      ),
                      child: const Center(child: Text('Increase X')),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () {
                      Get.to(() => const FirstPage());
                    },
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey,
                      ),
                      child: const Center(child: Text('Go to first page')),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () {
                      tapController.increaseY();
                    },
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey,
                      ),
                      child: const Center(child: Text('Increase Y')),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () {
                      tapController.totalXY();
                    },
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey,
                      ),
                      child: const Center(child: Text('Total')),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () {
                      tapController.add();
                    },
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey,
                      ),
                      child: const Center(child: Text('Add to list')),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
