import 'package:flutter/material.dart';
import 'package:flutter_getx/app/controller/counter_controller.dart';
import 'package:get/get.dart';

class CounterPage extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      init: CounterController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text('CounterPage')),
          body: SafeArea(
            child: Center(
              child: Text('${_.numbers}'),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => _.increment(),
          ),
        );
      },
    );
  }
}
