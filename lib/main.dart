import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy/home_binding.dart';
import 'package:udemy/view/screens/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  HomeBindings().dependencies();
  runApp(const MyApp());
}

// // 定义主函数，这是Flutter应用的入口点。
// // 使用async关键字，因为可能会执行异步操作。
// void main() async {
//   // 确保Flutter的widget系统绑定被初始化。
//   // 这一步在执行任何Flutter相关操作前通常是必需的，
//   // 特别是在调用runApp之前。
//   WidgetsFlutterBinding.ensureInitialized();
//
//   // 创建HomeBindings类的实例，并调用它的dependencies方法。
//   // 这通常用于设置特定于项目的依赖关系、服务或初始化工作。
//   // 注意：HomeBindings和dependencies是自定义的，可能与项目具体实现相关。
//   HomeBindings().dependencies();
//
//   // 运行Flutter应用。
//   // MyApp()是应用的根Widget，它构建了应用的整个界面。
//   // 使用const关键字标记MyApp构造函数调用，表示MyApp是编译时常量。
//   runApp(const MyApp());
// }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: HomeBindings(),
      // initialRoute: '/',
      // getPages: [
      //   GetPage(name: '/', page:()=>  HomeScreen(),transition: Transition.rightToLeft),
      // ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomeScreen(),
    );
  }
}



