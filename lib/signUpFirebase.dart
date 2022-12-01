import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'constants.dart';

class signUpF extends StatefulWidget {
  const signUpF({Key? key}) : super(key: key);

  @override
  _signUpFState createState() => _signUpFState();
}

class _signUpFState extends State<signUpF> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  bool showSpiner = false;
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpiner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200,
                    child: Image.asset("images/logo.png"),
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kTextFiledDecoration.copyWith(
                    hintText: "Your Email Adress",
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextFiledDecoration.copyWith(
                    hintText: "Your Name",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  obscureText: click,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextFiledDecoration.copyWith(
                      hintText: "Your Passowrd",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              click = !click;

                            });
                          },
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ))),

                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  obscureText: click,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextFiledDecoration.copyWith(

                    hintText: "Confirm Your Passowrd",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            click = !click;

                          });
                        },
                        child: Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                        )),

                  ),
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Material(
                    elevation: 5,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    child: MaterialButton(
                      onPressed: () async {
                        setState(() {
                          showSpiner = true;
                        });

                        // print(email);
                        //print(password);
                        try {
                          final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                          if (newUser != null) {
                            Navigator.pushNamed(context,'/home');
                          }
                          setState(() {
                            showSpiner = false;
                          });
                        } catch (e) {
                          print(e);
                          setState(() {
                            showSpiner = false;
                          });
                        }
                      },
                      minWidth: 200,
                      height: 42,
                      child: Text(
                        'Registare',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
