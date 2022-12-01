// ignore_for_file: file_names

//import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';


import '../modles/Usermodle.dart';
import 'SignUpService.dart';

class RegisterController extends GetxController{
  var type ="";
  var name = "";
  var email = "";
  var password ="";
  var c_password ="";
  var phone ="";
  var image ="";

var SignUpStatues = false;
  SignUpService service=SignUpService();

  Future<bool> registerOnClick()async{
    print(type.length);
    print(name.length);
    print(email.length);
    print(password.length);
    print(c_password.length);
    usermodle user=usermodle(
        type: type,
        name: name,
        email: email,
        password: password,
        c_password: c_password,
        // image: Text(image),
    );

    SignUpStatues = await service.register(user);

    try{
      print(2);
      var service = SignUpService();
      var status = await service.register(user);
      // await SignUpService.user(user).then((value) async{
      if(status){
        Get.snackbar(
          ' register',
          'register successfully',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
      print(3);
      return true;
    }catch(e){
      print(e.toString());
      Get.snackbar('warning', e.toString(),
      snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }

   // signupStatue =await service.register(user);
  }
}