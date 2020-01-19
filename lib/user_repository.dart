import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';

enum Status { Uninitialized, Authenticated, Authenticating, Unauthenticated }
class UserRepository with ChangeNotifier{
  User user;
  Status _status = Status.Uninitialized;
  
  Status get status => _status;
  User get authUser => user;

  Future<void> onAuthStateChanged() async {
    
    if (user == null) {
      _status = Status.Unauthenticated;
    }
    else {
      _status = Status.Authenticated;

    }
    notifyListeners();
  }

  Future<bool> signIn(String email, String password) async {
    try{
      var body = jsonEncode({
        'email': email,
        'password': password
      });

      var res = await http.post(('http://192.168.178.35:8000/auth/login'),
          body: body,
          headers: {
            "Accept": "application/json",
            "content-type": "application/json"
          });
      var response = jsonDecode(res.body);

      if(response.status == 200)
      {
        notifyListeners();
        return true;
      }
    }
    catch(e)
    {
      _status = Status.Unauthenticated;
      notifyListeners();
      return false;
    }
  }

  
}

class User {
  
  String name;
}