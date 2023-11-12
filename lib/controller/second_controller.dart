import 'package:get/get.dart';

class SecondController extends GetxController{
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
    print('init 2');
    super.onInit();
  }

@override
  void onReady() {
  print('ready 2');
     //when your controller  is created
    super.onReady();
  }

  @override
  void onClose() {
    print('close 2');
    //when your close your controller
    super.onClose();
  }

}