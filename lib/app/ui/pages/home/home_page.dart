import 'package:flutter/material.dart';
import 'package:flutter_getx/app/controller/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SafeArea(
        // Para otorgar esta a nuestra aplicaciones existen tres formas, una de ellas es esta:
        // Es un Widget que permite tener un estado y controllarlo desde el home controller
        // Recordar siempre tipar el GetBuilder
        child: GetBuilder<HomeController>(
          builder: (controller) {
            // El center centra horizontal y verticalmente el widget
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Hello World',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => controller.gotToCounter(),
                    child: Text('Counter'),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
