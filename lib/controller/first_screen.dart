import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

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
