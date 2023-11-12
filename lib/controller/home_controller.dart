import 'package:get/get.dart';

class HomeController extends GetxController{
  String name ='';
  RxInt index= 0.obs;

  void increaseIndex(){
    index.value++;
    update();
    ///this is set state
  }

  void displayName(){
    name ='Luke';
    update();
  }


  @override
  void onInit() {
    print('init');
    super.onInit();
  }

@override
  void onReady() {
  print('ready ');
     //when your controller  is created
    super.onReady();
  }

  @override
  void onClose() {
    print('close');
    //when your close your controller
    super.onClose();
  }

}