// ignore: file_names
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../modles/Usermodle.dart';
import 'ServerConfig.dart';

class SignUpService{

  var massage;
  var url=Uri.parse(ServerConfig.domainNamServer + ServerConfig.register);

  // ignore: curly_braces_in_flow_control_structures
   Future<bool> register(usermodle user)async{

   http.Response  response= await http.post(
     url,
      // headers:{
      //   'Accept' :'application/json'
      // },
      body: {
        'type':user.type,
        'name':user.name,
        'email':user.email,
        'password':user.password,
        'c_password':user.c_password,
        'phone':user.phone,
        'image':user.image,
      },
    );


   print("===============================================");

   print(response.statusCode);
    print(response.body);
    var jsonResponse =jsonDecode(response.body);
    // massage=jsonResponse['msg'];
    if(response.statusCode==200) {
      print(5);
      return true;
    }else if(response.statusCode == 401){
      print(6);
      var jsonResponse =jsonDecode(response.body);
      // massage=jsonResponse['errors'];
      return false;
    } else {
      return false;
    }
  }

  static user(usermodle user) {
    type:user.type;
    name: user.name;
    email: user.email;
    password: user.password;
    c_password: user.c_password;
    image: user.image;
  }

}