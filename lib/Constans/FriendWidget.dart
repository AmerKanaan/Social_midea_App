import 'package:flutter/material.dart';

class FriendWidget extends StatefulWidget {
  final String name;
  final String ?photo;
  FriendWidget({required this.name, this.photo});

  @override
  _FriendWidgetState createState() => _FriendWidgetState();
}

class _FriendWidgetState extends State<FriendWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, '/show_profile');
      },
      child: Container(
        height: 100,
        width: double.infinity,
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            foregroundImage: AssetImage('${widget.photo}'),
          ),
          title: Text("${widget.name}")),

      ),
    );
  }
}
