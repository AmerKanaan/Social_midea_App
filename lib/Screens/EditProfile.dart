import 'package:educational_world/Constans/TixetFiled.dart';
import 'package:educational_world/STM/Local/MyLocalController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    MyLocalController controller=Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile".tr),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 150,
                    foregroundImage: AssetImage('images/hadeel2.png'),
                    child: Text("43".tr),
                  ),
                  Container(height: 10,),
                  Text(
                    ("43".tr),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20330)),

                ),
                height: 70,
                width: 200,
                child: TexetFile(
                  onChanged: (String){},
                  hint: "Hadeel ALhajre",

                ),

              ),
              Container(height: 10,),
              Text(("44".tr),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
