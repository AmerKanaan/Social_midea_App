
import 'package:educational_world/STM/Local/MyLocalController.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../Constans/TixetFiled.dart';
import '../Logic/LoginController.dart';
import '../Screens/Home.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    //MyLocalController controller=Get.find();
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: Lottie.asset("images/lll.json")
              ),
              TexetFile(
                onChanged: (value) {
                  controller.email = value;
                },
                prefixIcon: Icon(Icons.email),

                label: ("Email Adress".tr),
                hint: ("15".tr),
              ),
              TexetFile(
                onChanged: (value) {
                  controller.password = value;
                },
                prefixIcon: Icon(Icons.lock),
                isPass: true,
                label: ("password".tr),
                hint: ("16".tr),
              ),
              Container(height: 15,),

              InkWell(
                  onTap: () async {
                   // await onClickLogin();
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.deepPurpleAccent,
                    ),
                    height: 30,
                    width: 70,
                    child: Text(
                      ("Login".tr),
                      style: TextStyle(color: Colors.white,
                          fontSize: 20
                      ),
                      textAlign: TextAlign.center,
                    ),

              ),),
              Container(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/sign');
                },
                child: Text("19".tr),
              )
            ],
          ),
        ),
      ),
    );
  }
//
 Future<void> onClickLogin() async {
    // EasyLoading.show(status: 'loading');
    var controller = LoginController();
    print(1);
    await controller.loginOnClick();

    if (controller.loginstatus) {
      EasyLoading.showSuccess('signup done !  ');
      Get.offNamed('/home');
    }else{
      EasyLoading.showError('error here');
      print('error');
    }
  }
}

