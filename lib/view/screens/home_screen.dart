import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy/controller/first_screen.dart';
import 'package:udemy/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home screen'),
        centerTitle: true,
        actions: [
          TextButton(onPressed: (){
          Get.to(const FirstScreen());
          }, child:const Text('NEXT',style: TextStyle(color: Colors.white),))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // GetBuilder<HomeController>(
          GetX<HomeController>(
              init: HomeController(),
              builder: (controller) {
                return Column(
                  children: [
                    Text(
                      controller.index.value.toString(),
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(
                        textColor: Colors.white,
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          // Get.to(const FirstScreen());
                          // Get.toNamed('/firstPage');
                          controller.increaseIndex();
                        },
                        child: const Text('first screen'),
                      ),
                    )
                  ],
                );
              }),
        ],
      ),
    );
  }
}