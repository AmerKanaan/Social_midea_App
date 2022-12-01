import 'package:educational_world/Developer/MenuSupject.dart';
import 'package:educational_world/STM/Local/MyLocalController.dart';
import 'package:educational_world/Screens/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constans/PostWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyLocalController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: MyDrawer(),
      ),
      appBar: AppBar(
        title: Text(
          'Educational world',
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 50,
                width: double.infinity,
                child: MenuePosts(
                  type: ("Sort".tr),
                )),
            Container(
              height: 600,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PostWidget( typeIcon: false,

                      namePost: "Amer Kanaan",
                      myPhoto: "images/amer.png",
                      ImagePick: 'images/OIP.png',
                      TextPost: 'My name is Amer',
                    ),
                    PostWidget(
                      typeIcon: true,
                      namePost: "Rama Alodaemy",
                      myPhoto: "images/rama.png",
                      ImagePick: 'images/rama2.png',
                      TextPost: 'My name is Rama',
                    ),
                    PostWidget( typeIcon: true,
                      namePost: "Fatina Alian",
                      myPhoto: "images/fatina.png",
                      TextPost: 'My name is Fatina',
                      ImagePick: 'images/fatina.png',
                    ),
                    PostWidget(
                      typeIcon: false,
                      namePost: "Hadeel Alhajre",
                      myPhoto: "images/hadeel2.png",
                      ImagePick: 'images/hadeel2.png',
                      TextPost: 'My name is Hadeel ',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
