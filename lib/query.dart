import 'package:flutter/material.dart';

import 'navigation_controller.dart';
class Queryabc extends StatefulWidget {




  @override
  _QueryabcState createState() => _QueryabcState();
}

class _QueryabcState extends State<Queryabc> {

  List _cities =
  ["Skylark1", "Skylark2", "Skylift"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentCity;

  @override
  void initState() {
    // TODO: implement initState
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _cities) {
      // here we are creating the drop down menu items, you can customize the item right here
      // but I'll just use a simple text for this
      items.add(new DropdownMenuItem(
          value: city,
          child: new Text(city)
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {

    var usernamecontroller = new TextEditingController();

    var emailcontroller = new TextEditingController();

    var phonenumbercontroller = new TextEditingController();

    var dateofbarthcontroller = new TextEditingController();

    var passwordcontroller = new TextEditingController();

    var conformpassoedcontroller = new TextEditingController();


    return Scaffold(
      appBar: AppBar( title: Text("Query"),),

      body: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: <Widget>[



              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Name",style: TextStyle(fontSize: 18),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Container(
                          height: 42,
                          child: Card(
                            child: TextField( controller: usernamecontroller,style: TextStyle(fontSize: 16,)
                                ,decoration: InputDecoration(hintText: "Eg: Parakash",contentPadding: EdgeInsets.all(10))
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Email id",style: TextStyle(fontSize: 18),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Container(
                          height: 42,
                          child: Card(
                              child: TextField( controller: usernamecontroller,style: TextStyle(fontSize: 16,)
                                  ,decoration: InputDecoration(hintText: "Eg: Parkash@forex.com",contentPadding: EdgeInsets.all(10))
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Mobile Number",style: TextStyle(fontSize: 18),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Container(
                          height: 42,
                          child: Card(
                              child: TextField( controller: usernamecontroller,style: TextStyle(fontSize: 16,)
                                  ,decoration: InputDecoration(hintText: "Eg: 9999999999",contentPadding: EdgeInsets.all(10))
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Company",style: TextStyle(fontSize: 18),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Container(
                          height: 42,
                          child: Card(
                              child: TextField( controller: usernamecontroller,style: TextStyle(fontSize: 16,)
                                  ,decoration: InputDecoration(hintText: "Eg: New Delhi complex",contentPadding: EdgeInsets.all(10))
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Lift Type",style: TextStyle(fontSize: 18),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width-60,
                          height: 42,
                          child: Card(

                            child: Container(
                                width: MediaQuery.of(context).size.width-100,

                                child: DropdownButton(items:_dropDownMenuItems,onChanged:changedDropDownItem,hint:Text("Skylark"),))
                            ,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Message",style: TextStyle(fontSize: 18),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Container(
                          height: 112,
                          child: Card(
                              child: TextField( controller: usernamecontroller,style: TextStyle(fontSize: 16,)
                                  ,decoration: InputDecoration(border: InputBorder.none,
                                      focusedBorder: InputBorder.none,hintText: "I want to install Elevator",contentPadding: EdgeInsets.all(10))
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width-100,
                  child: RaisedButton(

                    child: Text("SUBMIT",style: TextStyle(color: Colors.white),),color: Colors.deepOrange, onPressed: () => NavigationController.navigateToOtp(context), ),
                ),
              ),

            ],
          ),
        ),

    );



  }

  void changedDropDownItem(String selectedCity) {
    print("Selected city $selectedCity, we are going to refresh the UI");
    setState(() {
      _currentCity = selectedCity;
    });
  }
}
