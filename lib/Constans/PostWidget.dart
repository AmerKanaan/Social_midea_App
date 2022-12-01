// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:educational_world/Screens/EditPost.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PostWidget extends StatefulWidget {
  final String TextPost;
  final String? ImagePick;
  final String? namePost;
  final String? myPhoto;

final bool typeIcon;
  PostWidget({required this.TextPost,required this.typeIcon, this.ImagePick,this.namePost,this.myPhoto});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        //borderRadius: BorderRadius.circular(size.width * 0.025)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/show_profile');
              },
              child: CircleAvatar(
                foregroundImage: AssetImage(
                  "${widget.myPhoto}",
                ),
              ),
            ),
            title: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/show_profile');
                },
                child: Text('${widget.namePost}')),
            subtitle:   FaIcon(FontAwesomeIcons.userGraduate) , //FaIcon(FontAwesomeIcons.chalkboardTeacher),

            trailing: InkWell(
              onTap: () {
                showDialog<String>(
                  barrierColor: Colors.black54,
                  context: context,
                  builder: (BuildContext context) => SimpleDialog(
                    children: <Widget>[
                      InkWell(
                        child: ListTile(
                          title: Text('Edit'.tr),
                        ),
                        onTap: () {
                          Navigator.push(context,   MaterialPageRoute(
                              builder: (context) => EditPostScreen(widget.TextPost)));
                        },
                      ),
                      ListTile(
                        title: Text('Delete'.tr),
                      ),
                      ListTile(
                        title: Text('Report'.tr),
                      ),
                      ListTile(
                        title: Text('Link'.tr),
                      ),
                    ],
                  ),
                );
              },
              child: Icon(Icons.more_horiz_rounded),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(size.width * 0.025),
            child: widget.TextPost != null ? Text('${widget.TextPost}') : null,
          ),
          Container(
            child: widget.ImagePick != null
                ? GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/image_view',
                          arguments: widget.ImagePick);
                    },
                    child: SizedBox(
                      child: Hero(
                        tag: {widget.ImagePick},
                        child: Image.asset(
                          "${widget.ImagePick}",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ))
                : null,
          ),
          Reactions(),
          Divider(),
        ],
      ),
    );
  }
}

class Reactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      height: size.height * 0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Icon(Icons.favorite,color: Colors.red,);
            },
              child: FaIcon(FontAwesomeIcons.solidHeart,color: Colors.deepPurpleAccent,)
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/comment');
            },
            child: FaIcon(FontAwesomeIcons.comment,),
             ),
          // Icon(
          //   Icons.bookmark_remove_outlined,color: Colors.deepPurpleAccent,
          //
          // ),
          FaIcon(FontAwesomeIcons.bookmark)

        ],
      ),
    );
  }
}
List<PostWidget>PostList=[
  PostWidget( typeIcon: false,

    namePost: "Amer Kanaan",
    myPhoto: "images/amer.png",
    ImagePick: 'images/OIP.png',
    TextPost: 'My name is Amer',
  ),
  PostWidget(
    typeIcon: true,
    namePost: "Rama Alodaemy",
    myPhoto: "images/rama.png",
    ImagePick: 'images/rama2.png',
    TextPost: 'My name is Rama',
  ),
  PostWidget( typeIcon: true,
    namePost: "Fatina Alian",
    myPhoto: "images/fatina.png",
    TextPost: 'My name is Fatina',
    ImagePick: 'images/fatina.png',
  ),
  PostWidget(
    typeIcon: false,
    namePost: "Hadeel Alhajre",
    myPhoto: "images/hadeel2.png",
    ImagePick: 'images/hadeel2.png',
    TextPost: 'My name is Hadeel ',
  ),
];