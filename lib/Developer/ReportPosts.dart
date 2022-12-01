import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Screens/Drawer.dart';
class ReportPosts extends StatefulWidget {
  const ReportPosts({Key? key}) : super(key: key);

  @override
  _ReportPostsState createState() => _ReportPostsState();
}

class _ReportPostsState extends State<ReportPosts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
          child: MyDrawer(),
        ),
        appBar: AppBar(
          title: Text(
            ( " Developer".tr),

            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
        ),
        body: Container(
          child: Text('Report'.tr),
        ),
      ),
    );
  }
}


