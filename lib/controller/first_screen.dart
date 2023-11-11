import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class FirstScreen extends StatelessWidget {
    FirstScreen({super.key});

  final controller =Get.put(HomeController(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<HomeController>(
              init: HomeController(),
              builder: (controller) {
                return Text(
                  controller.name,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                );
              }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: MaterialButton(
              textColor: Colors.white,
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              onPressed: () {
                      controller.displayName();
              },
              child: const Text('display name'),
            ),
          )
        ],
      ),
    );
  }
}
