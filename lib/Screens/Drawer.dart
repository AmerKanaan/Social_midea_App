import 'package:educational_world/STM/Local/MyLocalController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../main.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool isAdmin  = true;
  @override
  Widget build(BuildContext context) {
    MyLocalController controller=Get.find();
    return SafeArea(
      child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('User name'),
                  accountEmail: Text('Email@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundImage: AssetImage("images/lll.json"),
                    child: Text('A'),
                  ),
                  decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                ),

                   ListTile(
                      leading: Icon(Icons.translate),
                      onTap: () {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => SimpleDialog(
                            title: Text('45'.tr),
                            children: <Widget>[
                              ListTile(
                                title: Text('4'.tr),
                                onTap: (){
                                  controller.changelange("ar");
                                },
                              ),
                              ListTile(
                                title: Text('5'.tr),
                                onTap: (){
                                  controller.changelange("en");
                                },
                              ),
                            ],
                          ),
                        );
                      },
                      title: Text("3".tr),
                  ),


                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.lightbulb_outline),
                  onTap: () {
                  if(Get.isDarkMode){
                 Get.changeTheme(Themes.customLightTheme);
                  } else{
                  Get.changeTheme(Themes.customDarkTheme);
                  }
                  },
                  title: Text("Theme".tr),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.help_outline),
                  onTap: () {},
                  title: Text("21".tr),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.settings_rounded),
                  onTap: () {},
                  title: Text("12".tr),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  onTap: () {},
                  title: Text("13".tr),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(

                    child:isAdmin? ListTile(
                      leading: Icon(Icons.developer_mode),
                      onTap: (){    Navigator.pushNamed(context, '/developer');},
                      title: Text("Developer".tr),
                    ):null,

                  ),

                SizedBox(
                  height: 10,
                ),
              ],
        ),
      ),
    
    ),
          );
  }
}
