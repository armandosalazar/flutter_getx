import 'package:flutter/material.dart';
import 'package:flutter_getx/app/controller/counter_controller.dart';
import 'package:get/get.dart';

class CounterPage extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CounterPage')),
        body: SafeArea(child: Text('CounterController')));
  }
}
