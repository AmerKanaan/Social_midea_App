import 'package:educational_world/Constans/PostWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ShowProfileScreen extends StatefulWidget {
  const ShowProfileScreen({Key? key}) : super(key: key);

  @override
  _ShowProfileScreenState createState() => _ShowProfileScreenState();
}

class _ShowProfileScreenState extends State<ShowProfileScreen> {
  String follow1 = 'Follow';
  String follow2 = 'UnFollow';
  String follow = 'Follow';
  bool S = true;

  BuildCount(String name, String count) {
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

  BuildButton() {
    return Container(

      padding: EdgeInsets.only(top: 20),
      child: FlatButton(
        onPressed: () {
          setState(() {
            if (S == false) {
              follow = follow1;

            }
            else {
              follow = follow2;

            }
            S = !S;
          });
        }, child: Container(
        width: 250,
        height: 30,
        alignment: Alignment.center,
        child: Text('$follow', style: TextStyle(color: Colors.white),),
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
      endDrawer: Drawer(

          child: Container(

          )),
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
                      foregroundImage: AssetImage("images/photo.jpg"),
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
                                BuildCount("Post".tr, "3"),
                                BuildCount("41".tr, "10"),
                                BuildCount("42".tr, "6"),
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
                  "User name",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18
                  ),
                ),
              ),
              Container(height: 30, color: Colors.white,),


              Container(
                color: Colors.white10,
                child: Column(
                    children: [
                     // PostWidget( typeIcon: true,),
                    ]
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
