import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController{
  String name ='';
  RxInt index= 0.obs;
  final box=GetStorage();

  void increaseIndex(){
    index.value++;
    update();
    ///this is set state
  }

  void displayName(){
    name ='Luke';
    ///here to save the data
    box.write('name', name);
    update();
  }

   void getTheSavedName(){
    String name = box.read('name')??'removed';
    print(name);
    update();
   }

   void removeSavedName(){
    box.remove('name');
    print('it is removed');
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