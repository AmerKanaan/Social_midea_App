import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Screens/Drawer.dart';
class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
          child: MyDrawer(),
        ),
        appBar: AppBar(
          title: Text(
            (" Developer".tr),

            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
        ),
        body: Container(
          child: Text('Coursesss'.tr),
        ),
      ),
    );
  }
}
