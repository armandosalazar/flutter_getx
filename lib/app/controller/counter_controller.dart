import 'package:get/get.dart';

class CounterController extends GetxController {
  int number = 0;
  RxInt number2 = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    print("Init");
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    print("Ready");
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print("Close");
    super.onClose();
  }

  void increment() {
    number++;
    // Redibuja la pantalla como StatefulWidget, entonces no tiene caso,
    // es aquí donde surgen las variables reactivas.
    update();
  }

  void increment2() {
    number2.value++;
  }
}
