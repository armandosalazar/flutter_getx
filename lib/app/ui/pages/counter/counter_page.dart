import 'package:flutter/material.dart';
import 'package:flutter_getx/app/controller/counter_controller.dart';
import 'package:get/get.dart';

class CounterPage extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      // init: CounterController(),
      // initState: (_) {},
      builder: (_) {
        print('[ Redraw Counter Page ]');
        return Scaffold(
          appBar: AppBar(
            title: Text('Counter Page'),
          ),
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${_.number}',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[700],
                    ),
                  ),
                  Obx(() {
                    print('[ Redraw Text ]');
                    return Text(
                      '${_.number2.value}',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[600],
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: null,
                child: Icon(Icons.add),
                onPressed: () => _.increment(),
              ),
              SizedBox(
                height: 10.0,
              ),
              FloatingActionButton(
                heroTag: null,
                child: Icon(Icons.add),
                onPressed: () => _.increment2(),
              ),
            ],
          ),
        );
      },
    );
  }
}
