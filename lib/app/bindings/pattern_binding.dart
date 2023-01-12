import 'package:get/get.dart';

import '../controller/pattern_controller.dart';

class PatternBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PatternController>(() => PatternController());
  }
}
