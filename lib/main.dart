import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skylark/splash.dart';


import 'navigation_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.lightBlue, statusBarBrightness: Brightness.light));
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Splash(), routes: NavigationController.configureRoutes());
  }
}
