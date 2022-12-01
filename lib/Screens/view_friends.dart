import 'package:educational_world/Constans/FriendWidget.dart';
import 'package:educational_world/STM/Local/MyLocalController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:firebase_core/firebase_core.dart';
class ViewFrindScreen extends StatefulWidget {
  const ViewFrindScreen({Key? key}) : super(key: key);

  @override
  _ViewFrindScreenState createState() => _ViewFrindScreenState();
}

class _ViewFrindScreenState extends State<ViewFrindScreen> {
  @override
  Widget build(BuildContext context){
  MyLocalController controller=Get.find();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("34".tr),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 30,),
              FriendWidget(name: "Amer Kanaan",photo: 'images/amer.png',), FriendWidget(name: 'Hadeel Alhajare',photo: 'images/hadeel2.png',),
              FriendWidget(name: 'Rama Odimy',photo: 'images/rama2.png',), FriendWidget(name: 'Fatina Alian',photo: 'images/fatina.png',), FriendWidget(name: "Amer Kanaan",photo: 'images/amer.png',), FriendWidget(name: 'Hadeel Alhajare',photo: 'images/hadeel2.png',),
              FriendWidget(name: 'Rama Odimy',photo: 'images/rama2.png',), FriendWidget(name: 'Fatina Alian',photo: 'images/fatina.png',),
            ],
          ),
        ),
      ),
    );
  }
}
