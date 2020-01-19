import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'navigation_controller.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => NavigationController.navigateToSignIn(context));
}

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('images/splash.png',fit: BoxFit.fitWidth,)
    );
  }
}
