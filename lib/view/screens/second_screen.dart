import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<HomeController>(builder: (controller) {
            return Text(
              controller.name,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            );
          }),
        ],
      ),
    );
  }
}
