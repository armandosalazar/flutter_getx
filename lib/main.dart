import 'package:flutter/material.dart';
import 'package:flutter_getx/app/bindings/home_binding.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/ui/themes/light_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    initialBinding: HomeBinding(),
    getPages: AppPages.pages,
    // home: HomePage(),
  ));
}
