import 'package:educational_world/STM/Local/MyLocalController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    MyLocalController controller =Get.find();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.white,
                child: 
                  Lottie.asset('images/lll2.json')
              ),
              
                Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 500,
                    margin: EdgeInsets.all(50),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(30),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                               Get.offNamed('/login');
                              },
                              minWidth: 400,
                              height: 50,
                              child: Text("1".tr),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(30),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign');
                              //  Get.offNamed('/register');
                              },
                              minWidth: 400,
                              height: 50,
                              child: Text("2".tr),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.language_outlined,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                                onTap: () {
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => SimpleDialog(
                                      title: Text('45'.tr),
                                      children: <Widget>[
                                        ListTile(
                                          title: Text('4'.tr),
                                          onTap: () {
                                            controller.changelange("ar");
                                          }
                                        ),
                                        ListTile(
                                          title: Text('5'.tr),
                                          onTap: () {
                                            controller.changelange("en");
                                          }
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                child: Text('3'.tr)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

            ],
           ),
        ),
      ),
    );
  }
}
