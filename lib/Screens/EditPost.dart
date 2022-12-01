import 'package:flutter/material.dart';

class EditPostScreen extends StatefulWidget {
  String  textEdit;
 EditPostScreen(
  this.textEdit
);
  @override
  _EditPostScreenState createState() => _EditPostScreenState();
}

class _EditPostScreenState extends State<EditPostScreen> {
  @override
  Widget build(BuildContext context) {
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
        body:SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Image.asset("images/learn.png",fit: BoxFit.fitHeight,),
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/learn.jpg"),
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextField(

                          onChanged: (value){
                            widget.textEdit=value;
                          },
                          decoration: InputDecoration(hintText: '${widget.textEdit}'),
                        ),
                        Container(
                          width: double.infinity,
                          height: size.height * 0.3,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            color: Colors.grey.withOpacity(0.2),
                            image: DecorationImage(
                              image: AssetImage('images/photo.jpg',),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        Container(height: 10,),
                        Text('Edit Photo',style: TextStyle(fontWeight: FontWeight.bold),),
                        Container(height: 10,),
                        InkWell(
                            onTap: (){},
                            child: Container(
                              decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.deepPurpleAccent,
                              ),
                              height: 30,
                              width: 70,
                              child: Text(
                                'Edit',
                                style: TextStyle(color: Colors.white,
                                    fontSize: 20
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
