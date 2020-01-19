
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skylark/query.dart';

import 'constants.dart';
import 'coresol.dart';
import 'navigation_controller.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(


        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Mahindra Sharma"),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: ClipOval(
                child: Image.asset('images/student.jpg',height: 40,width: 40,),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(

        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Image.asset('images/student.jpg'),),

            InkWell(
              child: Card(
               child: Container(
                 child: Row(children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Icon(Icons.home,color: Colors.blue,),
                   ),Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text('HOME'),
                   )
                  ],
                 ),
               ),
           ),
              onTap: () => NavigationController.navigateToDashboard(context),
            )

            ,

            InkWell(
              child: Card(
                child: Container(
                  child: Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.person,color: Colors.blue,),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('profile'),
                    )
                  ],
                  ),
                ),
              ),
              onTap: () => NavigationController.navigateToProfile(context),

            )

            ,







            InkWell(
              child: Card(
                child: Container(
                  child: Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.beenhere,color: Colors.blue,),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Complain'),
                    )
                  ],
                  ),
                ),
              ),
              onTap: () => NavigationController.navigateToQuery(context),

            )

            ,


            InkWell(
              child: Card(
                child: Container(
                  child: Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.beenhere,color: Colors.blue,),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Quick connect'),
                    )
                  ],
                  ),
                ),
              ),
              onTap: () => NavigationController.navigateToQuickConnect(context),

            )

            ,


            InkWell(
              child: Card(
                child: Container(
                  child: Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.beenhere,color: Colors.blue,),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('About Us'),
                    )
                  ],
                  ),
                ),
              ),
              onTap: () => NavigationController.navigateToAboutUS(context),

            ),

            InkWell(
              child: Card(
                child: Container(
                  child: Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.beenhere,color: Colors.blue,),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Privacy Policy'),
                    )
                  ],
                  ),
                ),
              ),

              onTap: () => NavigationController.navigateToPrivacyPolicy(context),

            )

            ,

            InkWell(
              child: Card(
                child: Container(
                  child: Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.beenhere,color: Colors.blue,),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Terms & Condition'),
                    )
                  ],
                  ),
                ),
              ),
              onTap: () => NavigationController.navigateToTermsandCONDITION(context),

            )

            ,
            InkWell(
              child: Card(
                child: Container(
                  child: Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.beenhere,color: Colors.blue,),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('LogOut'),
                    )
                  ],
                  ),
                ),
              ),

              onTap: () => NavigationController.navigateToSignIn(context),

            )

          ],
        ),
      ),
        body: SingleChildScrollView(
          child: Column(


              children: <Widget>[
                Container(
                    height: 240,
                    child: Carousel()
                ),

                Column(
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("About sieco" ,style: TextStyle(fontSize: 25),),
                    ),


                    Container(
                      width: MediaQuery.of(context).size.width-60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(Constants.lorem ,style: TextStyle(fontSize:12),),
                      ),
                    ),

                    RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => Queryabc()));},child: Text("query us",style: TextStyle(color: Colors.white),),color: Colors.deepOrangeAccent,)



                  ],



                )







              ]



      ),
        ),
    );
  }
}


