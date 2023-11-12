import 'package:get/get.dart';
import 'package:udemy/controller/home_controller.dart';
import 'package:udemy/controller/second_controller.dart';
class HomeBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(),fenix: true);
    Get.lazyPut(()=>SecondController(),fenix: true);
  }
}