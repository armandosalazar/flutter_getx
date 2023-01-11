import 'package:flutter_getx/app/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController()); // Da un performance más alto porque solo crea una instancia y se elimina cada vez que se deja la pantalla
    // Get.put(HomeController()); // Guarda de forma global en memoria para que después este disponible en toda la aplicación
  }
}
