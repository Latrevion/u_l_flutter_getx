import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy/home_binding.dart';
import 'package:udemy/view/screens/home_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'localizations/app_localization.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  HomeBindings().dependencies();
  await GetStorage.init();
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
    final box=GetStorage();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: HomeBindings(),
      // initialRoute: '/',
      // getPages: [
      //   GetPage(name: '/', page:()=>  HomeScreen(),transition: Transition.rightToLeft),
      // ],
      // locale:const Locale('en'),
      locale:(box.read('lang')==null)?const  Locale('en'):Locale(box.read('lang')),
      translations:AppLocalization() ,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomeScreen(),
    );
  }
}



