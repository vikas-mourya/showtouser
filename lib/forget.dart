import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:skylark/dashbord.dart';

import 'navigation_controller.dart';
import 'otp.dart';


class Forgot extends StatefulWidget {
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {


  var phonenumbercontroller = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
         Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Reset Password",style: TextStyle(fontSize: 20),),
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text("Please Enter your mobile number you"
                  "will recive a code to create a new Password via sms",style: TextStyle(fontSize: 16),),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 42,
                width: MediaQuery.of(context).size.width-100,
                child: Card(
                  child: Row(
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/icon_mobile.png',height: 20,width: 20,),
                      ),
//
                      Container(
                          width: MediaQuery.of(context).size.width-150,
                          child: TextField( controller: phonenumbercontroller,style: TextStyle(fontSize: 16)
                      ,decoration: InputDecoration(hintText: " 99999999999",contentPadding: EdgeInsets.all(10))
                       ))
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width-150,
                        child: RaisedButton(

                          child: Text("Reset Password"),color: Colors.blue, shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(18.0),), onPressed: ()  {


                          Navigator.push(context, MaterialPageRoute(builder:(context) => Dashboard()));


                        }, ),
                      ),
                    ),
                  ],
                ),
              ),
            ),





          ],
        ),



    );
  }



//  Future<String> forgot() async {
//
//
//    var resBody = {};
//    resBody["apiUser"] = usernamecontroller.text;
//    resBody["apiPass"] = passwordcontroller.text;
//
//    var user = {};
//    user = resBody;
//    String str = json.encode(user);
//    print(str);
//    var url = 'https://asciitechsolution.com/skylark/api/authentication/login';
//    var response = await http.post(url,headers: {"X-API-KEY": "CODEX@123"}, body: str);
//    print('Response body: ${response.body}');
//
//    var data =  json.decode(response.body);
////                              print(data['data']['pre_auth_session']);
//  }


}

