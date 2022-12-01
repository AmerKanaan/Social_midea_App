import 'package:educational_world/Auth/Login_Screen.dart';
import 'package:educational_world/Constans/PageViewBar.dart';
import 'package:educational_world/Screens/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Screens/AddPost.dart';
import '../Screens/Home.dart';

class HomePage2 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
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
      body: Stack(
      //w  decoration: BoxDecoration(color: Colors.d),
        children: [PageView(
          children: [
            Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_omn51ec8.json',height: 200,width: 200),
            Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_omn51ec8.json',height: 200,width: 200),
            Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_omn51ec8.json',height: 200,width: 200),
            Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_omn51ec8.json',height: 200,width: 200),
            Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_omn51ec8.json',height: 200,width: 200),
            LoginScreen(),
          ],
          controller: pageController,
          onPageChanged: OnPageChanged,
          physics: NeverScrollableScrollPhysics(),
        ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {

                  },
                  child:Text('Skip')
                ),

                GestureDetector(
                  onTap: () {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                    if (pageController.page == 3.0) {

                    }
                  },
                  child: Text('Next')
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}
