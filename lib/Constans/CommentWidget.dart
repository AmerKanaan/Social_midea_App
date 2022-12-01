import 'package:flutter/material.dart';

class CommentWidget extends StatefulWidget {
  const CommentWidget({Key? key}) : super(key: key);

  @override
  _CommentWidgetState createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Container(
        decoration: BoxDecoration(

          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius:30,
            foregroundImage: AssetImage('images/learn.png'),
          ),
          title: Container(

              margin: EdgeInsets.only(top: 15), child: Text("Amer Kanaan")),
          subtitle: Container(

              padding: EdgeInsets.all(10),

              child: Text("Hi ,How are you")),
        ),
      ),
        Container(height: 20,)]
    );
  }
}
