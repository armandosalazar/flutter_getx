import 'package:flutter/material.dart';
import 'package:flutter_getx/app/controller/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: SafeArea(child: Text('works!')),
    );
  }
}
