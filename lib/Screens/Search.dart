import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Search".tr),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 20.0,),
            TextField(
              style:TextStyle(color: Colors.black87) ,
              decoration: InputDecoration(
                  filled:true,
                  fillColor: Colors.deepPurpleAccent.withOpacity(0.3),
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(9.0),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search),
                  hintText: ("Search".tr)
              ),),

          ],
        ),
      ),
    );
  }
}
