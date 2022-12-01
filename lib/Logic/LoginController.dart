import 'package:educational_world/Logic/loginService.dart';
import 'package:get/get.dart';

import '../modles/Usermodle.dart';
class LoginController extends GetxController{

  var email = "";
  var password ="";
  var loginstatus=false;
  var error;

  LoginService  service=LoginService();

  Future<void> loginOnClick()async{
    print(email);
    print(password);
    usermodle user=usermodle(

      email: email,
      password: password,
    );
    loginstatus= await service.login(user);



    }

    // signupStatue =await service.register(user);
  }