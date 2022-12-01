import 'package:educational_world/Constans/PostWidget.dart';
import 'package:educational_world/STM/Local/MyLocalController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Drawer.dart';
class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  BuildCount(String name, String count) {
    MyLocalController controller=Get.find();
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          name,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        )
      ],
    );
  }
  BuildButton(){
    return Container(

      padding: EdgeInsets.only(top: 20),
      child: FlatButton (
        onPressed: (){
          Navigator.pushNamed(context, '/edit_profile');
        }, child: Container(
        width: 250,
        height: 30,
        alignment: Alignment.center,
        child: Text(("Edit Profile".tr),style: TextStyle(color: Colors.white),),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepPurpleAccent
        ),
      ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      endDrawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          ("38".tr),

          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 15,),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    CircleAvatar(
                      foregroundImage: AssetImage("images/hadeel2.png"),
                      radius: 40,
                    ),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                BuildCount(("Post".tr), "3"),
                                BuildCount(("40".tr), "10"),
                                BuildCount(("41".tr), "6"),
                              ],

                            ),

                            BuildButton(),
                          ],
                        ))
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Hadeel Alhajre",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18
                  ),
                ),
              ),
              Container(height: 30,color:Colors.white,),


              Container(
                color: Colors.white10,
                child: Column(
                  children: [
                    PostWidget(
                      typeIcon: true,
                      namePost: "Hadeel Alhajre",
                      myPhoto: "images/hadeel2.png",
                      ImagePick: 'images/hadeel2.png',
                      TextPost: 'My name is Hadeel ',
                    ),],
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
