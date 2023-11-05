import 'package:flutter/material.dart';
import 'package:udemy/first_screen.dart';
import 'package:udemy/home_screen.dart';
import 'package:get/get.dart';
import 'package:udemy/seconde_screen.dart';

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
      getPages: [
        GetPage(name: '/', page:()=>const HomeScreen(),transition: Transition.rightToLeft),
        GetPage(name: '/firstPage', page:()=>const FirstScreen(),transition: Transition.rightToLeft),
        GetPage(name: '/secondPage', page:()=>const SecondScreen(),transition: Transition.rightToLeft),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home:   const HomeScreen(),
    );
  }
}



