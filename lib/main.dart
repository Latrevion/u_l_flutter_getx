import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy/home_binding.dart';
import 'package:udemy/view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      initialBinding: HomeBindings(),
      getPages: [
        GetPage(name: '/', page:()=>  HomeScreen(),transition: Transition.rightToLeft),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home:   const HomeScreen(),
    );
  }
}



