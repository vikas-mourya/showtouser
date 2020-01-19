import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:skylark/dashbord.dart';

import 'navigation_controller.dart';
import 'otp.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  var usernamecontroller = new TextEditingController();
  var passwordcontroller = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[

                Column(
                  children: <Widget>[
                    Container(
                        color: Colors.blue,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width*0.50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,

                          children: <Widget>[
                            Image.asset('images/potential-log.png',height: 150,width: 150,)
                          ],
                        ),),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Welcome !",style: TextStyle(color: Colors.black,fontSize: 21),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Login to your account ",style: TextStyle(color: Colors.black,fontSize: 14),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage( 'images/student.jpg',)
                      ),
                    ),
                  ],
                ),


                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[

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
                                    child: Image.asset('images/icon_email.png',height: 20,width: 20,),
                                  ),
//
                                Container(
                                  width: MediaQuery.of(context).size.width-150,
                                    child: TextField( controller: usernamecontroller,style: TextStyle(fontSize: 20),)),
                                ],
                              ),
                            ),
                          ),
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
                                    child: Image.asset('images/icon_house_key.png',height: 20,width: 20,),
                                  ),
//
                                  Container(
                                      width: MediaQuery.of(context).size.width-150,
                                      child: TextField( controller: passwordcontroller,style: TextStyle(fontSize: 20),))                                ],
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width-150,
                            child: RaisedButton(

                              child: Text("LOGIN"),color: Colors.blue, shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(18.0),), onPressed: ()  {


                                login();
                              Navigator.push(context, MaterialPageRoute(builder:(context) => Dashboard()));


                            }, ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container( width: MediaQuery.of(context).size.width-180,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(child: Row( children: <Widget>[Image.asset('images/forgot.png',height: 28,width: 28,),Text("Forgot your details?")],),
                            onTap:() => NavigationController.navigateToForgot(context)


                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row( children: <Widget>[Text('Create a   '),InkWell(child: Text("NEW ACCOUNT",style: TextStyle(color: Colors.blueAccent),), onTap: () => NavigationController.navigateTonNewAccount(context),)],),
                        ),
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),


    );
  }



  Future<String> login() async {


    var resBody = {};
    resBody["apiUser"] = usernamecontroller.text;
    resBody["apiPass"] = passwordcontroller.text;

    var user = {};
    user = resBody;
    String str = json.encode(user);
    print(str);
    var url = 'https://asciitechsolution.com/skylark/api/authentication/login';
    var response = await http.post(url,headers: {"X-API-KEY": "CODEX@123"}, body: str);
    print('Response body: ${response.body}');

    var data =  json.decode(response.body);
//                              print(data['data']['pre_auth_session']);
  }


}

