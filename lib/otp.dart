import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:skylark/dashbord.dart';
import 'navigation_controller.dart';
import 'colors.dart' as colors;
import 'constants.dart';

class Otp extends StatefulWidget {

  String usename,email,phone,dataofb,password,confirmpassword;


  Otp({this.usename,this.email,this.phone,this.dataofb,this.password,this.confirmpassword});


  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  var otpcontroller = new TextEditingController();



  @override
  Widget build(BuildContext context) {
  
    
    return Scaffold(
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: <Widget>[
          
          Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("OTP Verification",style: TextStyle(fontSize: 30),),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Please Enter your 4 Digit CODE You \n have recevied Via SMS on Your\n Mobile Number"),
                ),
              ),

            ],
          ),
          

          Column(
            children: <Widget>[
              Container(
                child: Card(
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width-100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PinEntryTextField(
                        onSubmit: (String pin){
                          showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Pin"),
                                  content: Text('Pin entered is $pin'),
                                );
                              }
                          ); //end showDialog()

                        }, // end onSubmit
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text("Resend Code",style: TextStyle(fontSize: 15),),
                      ),

                      onTap: (){},
                    ),
                  ],
                ),
              ),
            ],
          ),



          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width-150,
              child: RaisedButton(

                child: Text("SUBMIT"),color: Colors.blue, shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(18.0),), onPressed: () async {




                Navigator.push(context, MaterialPageRoute(builder:(context) => Dashboard()));





              }, ),
            ),
          ),
        ],
      ),
      
    );
  }

  Future<String> Register() async {


    var resBody = {};
    resBody["apiUser"] = widget.usename;
    resBody["apiPass"] = widget.password;

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



