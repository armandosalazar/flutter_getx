import 'package:flutter_getx/app/bindings/counter_binding.dart';
import 'package:flutter_getx/app/ui/pages/home/home_page.dart';
import 'package:flutter_getx/app/ui/pages/splash_page.dart';
import 'package:get/get.dart';

import '../ui/pages/counter/counter_page.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Routes.COUNTER,
      page: () => CounterPage(),
      transition: Transition.downToUp,
      binding: CounterBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
    )
  ];
}
