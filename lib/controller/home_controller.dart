import 'package:get/get.dart';

class HomeController extends GetxController{
  String name ='Luke';

  int index = 0;

  void increaseIndex(){
    index++;
    update();
    ///this is set state
  }
}