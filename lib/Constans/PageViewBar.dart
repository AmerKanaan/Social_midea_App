
import 'package:educational_world/Screens/Profile.dart';
import 'package:educational_world/Screens/Search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screens/AddPost.dart';
import '../Screens/Home.dart';
import '../Screens/view_friends.dart';


class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  int PageIndex = 0;

  OnPageChanged(int pageIndex) {
    setState(() {
      this.PageIndex = pageIndex;
    });
  }
  OnTap(int pageIndex) {
    pageController.animateToPage(
        pageIndex,
        duration: Duration(milliseconds: 200),
        curve: Curves.bounceInOut

    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent
        ),
        child: PageView(

          children: [HomeScreen(),ViewFrindScreen(),  AddBost(), SearchScreen(), MyProfileScreen()],
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
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),backgroundColor: Colors.orange),
          BottomNavigationBarItem(icon: Icon(Icons.people,color: Colors.white,)),
          BottomNavigationBarItem(icon: Icon(Icons.post_add_rounded,color: Colors.white,),backgroundColor: Colors.orange),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,)),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white,)),
        ],

      ),
    );
  }
}
