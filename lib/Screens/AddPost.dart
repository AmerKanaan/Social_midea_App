import 'package:educational_world/Developer/MenuSupject.dart';
import 'package:educational_world/STM/Local/MyLocalController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddBost extends StatefulWidget {
  const AddBost({Key? key}) : super(key: key);

  @override
  _AddBostState createState() => _AddBostState();
}

class _AddBostState extends State<AddBost> {
  @override
  Widget build(BuildContext context) {
    MyLocalController controller=Get.find();
    var size = MediaQuery.of(context).size;
    return Scaffold(
        endDrawer: Drawer(
            backgroundColor: Colors.black,
            child: Container(
              color: Colors.black,
            )),
        appBar: AppBar(
          title: Text(
            'Educational world',
          ),
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [



              Container(

                child: SingleChildScrollView(
                  child: Column(

                    children: [
                      Container(height: 50,
                        child: MenuePosts(
                          type: ("35".tr),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "what are thinking".tr),
                      ),
                      Container(
                        width: double.infinity,
                        height: size.height * 0.3,
                        alignment: Alignment.center,
                        child: Icon(Icons.add_a_photo_outlined),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ),

                      Container(
                        height: 10,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.deepPurpleAccent,
                            ),
                            height: 30,
                            width: 70,
                            child: Text(
                              ("Post".tr),
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ))
                    ],
                  ),
                ),
              ),

            ],
          ),
        ));
  }
}
