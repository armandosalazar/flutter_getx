import 'package:flutter_getx/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../ui/pages/counter/counter_page.dart';

class HomeController extends GetxController {
  // Tiene un estado de vida
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

  void gotToCounter() {
    // Get.to(() => CounterPage());
    // Forma correcta
    Get.toNamed(Routes.COUNTER, preventDuplicates: true);
  }
}
