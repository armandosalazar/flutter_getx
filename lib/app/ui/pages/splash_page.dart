import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () => Get.toNamed('/home'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 200, bottom: 10),
          child: Container(
            height: 200,
            width: 200,
/*decoration: BoxDecoration(
image: DecorationImage(
image: AssetImage('images/img_splash.png'),
fit: BoxFit.fill)),*/
          ),
        ),
        Text(
          'CONNECT',
          style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 20,
              decoration: TextDecoration.none),
        ),
      ]),
    );
  }
}
