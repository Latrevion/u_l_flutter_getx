import 'package:get/get.dart';

class HomeController extends GetxController{
  String name ='Luke';

  // getbuilder+update
  // int index = 0;

  RxInt index= 0.obs;

  void increaseIndex(){
    index.value++;

    // update();
    ///this is set state
  }
}