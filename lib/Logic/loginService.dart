// ignore: file_names
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import '../modles/Usermodle.dart';
import 'ServerConfig.dart';

class LoginService{

  var error;
  var token;

  var url=Uri.parse(ServerConfig.domainNamServer + ServerConfig.login);

  // ignore: curly_braces_in_flow_control_structures
  Future<bool> login(usermodle user)async{
    var response= await http.post(
      url,
      headers:{
        'Accept' :'application/json'
      },
      body: {

        'email':user.email,
        'password':user.password,
      },
    );

    print(response.statusCode);
    print(response.body);
    var jsonResponse =jsonDecode(response.body);
    print(response.body);

    if(response.statusCode==200) {
      token=jsonResponse['token'];
      print('$token');
      Get.offNamed('/home');
      return true;
    }else if(response.statusCode == 401){
      var jsonResponse =jsonDecode(response.body);
      error=jsonResponse['error'];
      return false;
    } else {
      return false;
    }
  }

}