import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'navigation_controller.dart';
import 'otp.dart';
class NewAccount extends StatefulWidget {
  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  @override
  Widget build(BuildContext context) {

    var usernamecontroller = new TextEditingController();

    var emailcontroller = new TextEditingController();

    var phonenumbercontroller = new TextEditingController();

    var dateofbarthcontroller = new TextEditingController();

    var passwordcontroller = new TextEditingController();

    var conformpassoedcontroller = new TextEditingController();

    DateTime _dateTime;


    return Scaffold(

      body: SingleChildScrollView(



        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[


            Column(
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width*0.44,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Register",style: TextStyle(fontSize: 30,color: Colors.white),),
                      ),

                      Image.asset('images/potential-log.png',height: 70,width: 70,)
                    ],
                  ),),

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
                              Container(
                                  width: MediaQuery.of(context).size.width-110,
                                  child: TextField( controller: usernamecontroller,style: TextStyle(fontSize: 16,)
                                      ,decoration: InputDecoration(hintText: " User Name",contentPadding: EdgeInsets.all(10))

                                  )),
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
//
                              Container(
                                  width: MediaQuery.of(context).size.width-110,
                                  child: TextField( controller: emailcontroller,style: TextStyle(fontSize: 16)
                                      ,decoration: InputDecoration(hintText: " Email Address",contentPadding: EdgeInsets.all(10))


                                  )),
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
//
                              Container(
                                  width: MediaQuery.of(context).size.width-110,
                                  child: TextField( controller: phonenumbercontroller,style: TextStyle(fontSize: 16)
                                      ,decoration: InputDecoration(hintText: " Phone Number",contentPadding: EdgeInsets.all(10))
                                  )),
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

                              IconButton(
                                icon: Icon(Icons.calendar_today,size: 10,),
                                onPressed: () {
                                  showDatePicker(
                                      context: context,
                                      initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                                      firstDate: DateTime(2001),
                                      lastDate: DateTime(2021)
                                  ).then((date) {
                                    setState(() {
                                      _dateTime = date;
                                    });
                                  });
                                },
                              ),
//
                              Container(
                                  width: MediaQuery.of(context).size.width-160,
                                  child: Container(
                                    width:  MediaQuery.of(context).size.width-190,
                                    child:Text(_dateTime == null ? '2019-04-04' : _dateTime.toString().substring(0,9)),
                                  )),
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
//
                              Container(
                                  width: MediaQuery.of(context).size.width-110,
                                  child: TextField( controller: passwordcontroller,style: TextStyle(fontSize: 16),keyboardType: TextInputType.text
                                      ,decoration: InputDecoration(hintText: " Password",contentPadding: EdgeInsets.all(10))
                                  )),
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
//
                              Container(
                                  width: MediaQuery.of(context).size.width-110,
                                  child: TextField( controller: conformpassoedcontroller,style: TextStyle(fontSize: 16),keyboardType: TextInputType.text
                                      ,decoration: InputDecoration(hintText: " Confirm Password",contentPadding: EdgeInsets.all(10))
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),



                    Container(
                      width: MediaQuery.of(context).size.width-100,
                      child: RaisedButton(

                        child: Text("SIGN UP"),color: Colors.blue, shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(18.0),), onPressed: () =>Navigator.push(context, MaterialPageRoute(builder:
                          (context) => Otp(usename: usernamecontroller.text,email: emailcontroller.text,phone: phonenumbercontroller.text,dataofb: dateofbarthcontroller.text,
                            password: phonenumbercontroller.text,confirmpassword: conformpassoedcontroller.text,
                          ), )
                    ),))
                      ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: MediaQuery.of(context).size.width-100,
                  child: Row( children: <Widget>[Text('Already Have an Account ?  '),InkWell(child: Container(child: Text("Sign in",style: TextStyle(color: Colors.blueAccent),)), onTap: () => NavigationController.navigateToSignIn(context))],)),
            ),





          ],
        ),
      ),

    );


  }

  Future<String> register(String usename ,String email,String phone,String dataofb,String password,String confirmpassword) async {


    var resBody = {};
    resBody["first_name"] = usename;
    resBody["apiPass"] = email;

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
