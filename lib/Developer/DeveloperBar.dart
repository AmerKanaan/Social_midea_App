import 'package:educational_world/Developer/Courses.dart';
import 'package:educational_world/Developer/ReportPosts.dart';
import 'package:educational_world/Screens/Drawer.dart';
import 'package:educational_world/Screens/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Screens/AddPost.dart';
import '../Screens/Home.dart';

class DeveloperPage extends StatefulWidget {
  @override
  _DeveloperPageState createState() => _DeveloperPageState();
}

class _DeveloperPageState extends State<DeveloperPage> {
  PageController pageController = PageController();
  int PageIndex = 0;

  OnPageChanged(int pageIndex) {
    setState(() {
      this.PageIndex = pageIndex;
    });
  }

  OnTap(int pageIndex) {
    pageController.animateToPage(pageIndex,
        duration: Duration(milliseconds: 200), curve: Curves.bounceInOut);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: PageView(
          children: [CoursesPage(), ReportPosts()],
          controller: pageController,
          onPageChanged: OnPageChanged,
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        height: 50,
        backgroundColor: Colors.deepPurpleAccent,
        currentIndex: PageIndex,
        activeColor: Colors.deepPurpleAccent,
        onTap: OnTap,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(
              FontAwesomeIcons.chalkboardTeacher,
                color: Colors.white,
              ),
           ),
          BottomNavigationBarItem(
              icon: FaIcon(
            Icons.report,
            color: Colors.white,
          )),

        ],
      ),
    );
  }
}
