import 'package:flutter/material.dart';
import 'package:skylark/forget.dart';
import 'package:skylark/profile.dart';
import 'package:skylark/query.dart';
import 'package:skylark/sign_in.dart';

import 'dashbord.dart';
import 'newaccount.dart';
import 'otp.dart';


class NavigationController {
  static String signIn = "/signIn";
  static String otp = "/otp";
  static String root = "/";

  static Map<String, WidgetBuilder> configureRoutes() {
    var routes = <String, WidgetBuilder>{
      signIn: (BuildContext context) => SignIn()
    };
    return routes;
  }

  static void navigateToSignIn(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignIn()));
  }

  static void navigateToOtp(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Otp()));
  }

  static void navigateToForgot(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot()));
  }
  static void navigateTonNewAccount(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => NewAccount()));
  }

  static void navigateToDashboard(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Dashboard()));
  }

  static void navigateToQuery(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Queryabc()));
  }

  static void navigateToProfile(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Profile()));
  }

  static void navigateToComplain(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Complain()));

  }

  static void navigateToQuickConnect(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Quickconnect()));
  }


  static void navigateToAboutUS(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AboutUs()));

  }

  static void navigateToPrivacyPolicy(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PrivacyPolicy()));
  }

  static void navigateToTermsandCONDITION(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TermsandCondition()));
  }
}
