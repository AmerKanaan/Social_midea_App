import 'package:educational_world/Constans/CommentWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            color: Colors.white,
            height: size.height,
            width: size.width,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 60,
              width: size.width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border(top: BorderSide(color: Colors.grey))),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        width: size.width,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            suffixIcon: IconButton(
                              icon: Icon(Icons.send),
                              onPressed: () {},
                            ),
                            contentPadding: EdgeInsets.all(5),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 30,
              child: Container(
                width: size.width,
                height: size.height - 150,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      CommentWidget(),
                    ],
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
