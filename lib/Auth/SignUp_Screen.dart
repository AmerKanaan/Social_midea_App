import 'package:educational_world/STM/Local/MyLocalController.dart';
import 'package:educational_world/Screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../Constans/TixetFiled.dart';
import '../Logic/RegisterController.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  signUP()async{
     var formdata = formstate.currentContext;
  }
  late var Username,password,email;
  GlobalKey <FormState> formstate = new GlobalKey();
   get value => null;

  @override
  Widget build(BuildContext context) {





   RegisterController mcontroller = Get.put(RegisterController());

    MyLocalController controller=Get.find();
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset('images/photo.jpg'),
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.50,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CircleAvatar(
                      maxRadius: 70,
                      child: Icon(Icons.add_a_photo_outlined),
                      backgroundColor: Color.fromARGB(100, 50, 54, 43),
                    ),
                    Container(
                      width:100,
                      child: DropdownButtonFormField<String>(
                        hint: Text('Type'.tr),
                        onChanged: (value ) {
                         mcontroller.type= value!;
                        },
                        items: [
                         DropdownMenuItem(child: Text('Student'.tr),value: ('studant'),),
                          DropdownMenuItem(child: Text('Teacher'.tr),value:'teatcher' ,)

                        ],
                      ),
                    ),
                    TexetFile(

                      prefixIcon: Icon(Icons.person),
                      label: ("Full name".tr),
                      hint: ("14".tr),
                      onChanged: (value){
                        mcontroller.name= value;
                    },
                    ),
                    TexetFile(

                        onChanged: (value){
                          mcontroller.email=value;
                        },

                      prefixIcon: Icon(Icons.email),
                      label: ('Email Adress'.tr),
                      hint: ("15".tr),
                    ),
                    TexetFile(
                      onChanged: (value){
                       mcontroller.password = value;
                      },
                      prefixIcon: Icon(Icons.lock),
                      isPass: true,
                      label: ("Password".tr),
                      hint: ("16".tr),
                    ),
                    TexetFile(
                      onChanged: (value){
                        mcontroller.c_password=value;
                      },
                      prefixIcon: Icon(Icons.lock),
                      isPass: true,
                      hint: ("confirm your password".tr),
                    ),
                    TexetFile(
                      onChanged: (value){
                        mcontroller.phone=value;
                      },
                      prefixIcon: Icon(Icons.phone),
                      label: ("phone".tr),
                      hint: ("17".tr),
                    ),
                    SizedBox(height: 10,),
                    InkWell (
                      onTap: () async{

                         Navigator.pushNamed(context, '/home');
                         //onClickRegister();
                        },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.deepPurpleAccent,
                        ),
                        height: 30,
                        width: 80,
                        child: Text(
                          ("Registe".tr),
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text("19".tr),
            )
          ],
        ),
      )),
    );
  }
  void onClickRegister()async {
    print("===============================================");
     var controller = RegisterController();

     await controller.registerOnClick();

     if (controller.SignUpStatues) {
         EasyLoading.showSuccess('signup done !  ');
        Get.off(HomeScreen());
     }else{
       EasyLoading.showError('error here');
       print('error');
     }
     }
  }

