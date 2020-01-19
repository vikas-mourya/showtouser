import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skylark/constants.dart';

class Profile extends StatelessWidget {
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
                        child: Text("Profile",style: TextStyle(fontSize: 30,color: Colors.white),),
                      ),

                      Image.asset('images/potential-log.png',height: 70,width: 70,)
                    ],
                  ),),

              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage( 'images/student.jpg',)
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
                        height: 42,
                        width: MediaQuery.of(context).size.width-100,
                        child: Card(
                          child: Row(
                            children: <Widget>[
                              Container(
                                  width: MediaQuery.of(context).size.width-150,
                                  child: TextField( controller: usernamecontroller,style: TextStyle(fontSize: 16,)
                                      ,decoration: InputDecoration(hintText: " ajay ",contentPadding: EdgeInsets.all(10))

                                  )),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.edit),
                              ),
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
                                  width: MediaQuery.of(context).size.width-150,
                                  child: TextField( controller: emailcontroller,style: TextStyle(fontSize: 16)
                                      ,decoration: InputDecoration(hintText: " ajay@gmail.com",contentPadding: EdgeInsets.all(10))


                                  )),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.edit),
                              ),
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
                                  width: MediaQuery.of(context).size.width-150,
                                  child: TextField( controller: phonenumbercontroller,style: TextStyle(fontSize: 16)
                                      ,decoration: InputDecoration(hintText: " 9999999999",contentPadding: EdgeInsets.all(10))
                                  )),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.edit),
                              ),
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
                                  width: MediaQuery.of(context).size.width-150,
                                  child: TextField( controller: passwordcontroller,style: TextStyle(fontSize: 16),keyboardType: TextInputType.text
                                      ,decoration: InputDecoration(hintText: "*********",contentPadding: EdgeInsets.all(10))
                                  )),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.edit),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),


                  Padding(
                   padding: const EdgeInsets.all(8.0),
                    child: Container(
                     width: MediaQuery.of(context).size.width-150,
                      child: RaisedButton(

                        child: Text("Update"),color: Colors.blue, shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(18.0),), onPressed: ()  {

                  },),

                    ))




          ],
        ),
      ),

    )]))
    );


  }
}


class Complain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Complain"),),
    );
  }
}

class Quickconnect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quick Connect"),),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(child: Text("phone number",style: TextStyle(fontSize: 20))),
                  ),


                  Container(child: Text("99999999999",style: TextStyle(fontSize: 30))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(child: Text("Email",style: TextStyle(fontSize: 20))),
                  ),

                  Container(child: Text("help@skylark.com",style: TextStyle(fontSize: 26),)),
                ],
              ),
            )


          ],

        ),
      ),
    );
  }
}

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AboutUs"),),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/potential-log.png'),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("AboutUs" ,style: TextStyle(fontSize: 23),),
            ),

            Container(
              width: MediaQuery.of(context).size.width-60,
                child: Text(Constants.lorem))

          ],
        ),
      ),
    );
  }
}

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Privacy Policy"),),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/potential-log.png'),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Privacy Policy",style: TextStyle(fontSize: 23)),
            ),

            Container(
                width: MediaQuery.of(context).size.width-60,
                child: Text(Constants.lorem))

          ],
        ),
      ),
    );
  }
}

class TermsandCondition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Terms and Condition"),),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/potential-log.png'),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Terms and Condition",style: TextStyle(fontSize: 23)),
            ),

            Container(
                width: MediaQuery.of(context).size.width-60,
                child: Text(Constants.lorem))

          ],
        ),
      ),
    );
  }
}