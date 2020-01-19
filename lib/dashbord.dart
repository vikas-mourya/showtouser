import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:skylark/page1.dart';
import 'package:skylark/page2.dart';
import 'package:skylark/page3.dart';
import 'package:skylark/query.dart';

import 'coresol.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    Widget mbody;
    switch(_index){

      case 0 :        mbody = new Page1(); break;
      case 1 :        mbody = new Page2(); break;
      case 2 :        mbody = new Page3(); break;
      case 3 :        mbody = new Queryabc(); break;

    }


    return Scaffold(



      body: mbody,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.lifeRing,size: 20,),
            title: Text('SKYLARC'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.addressCard,size: 20,),
            title: Text('SKYLIFT'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.adobe,size: 20,),
            title: Text('STELO'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.question,size: 20,),
            title: Text('Query'),
          ),
        ],
        currentIndex: _index,
        selectedItemColor: Colors.amber[800],
        onTap: (newIndex) => setState(()=>_index = newIndex) ,
      ),
    );

  }
}








