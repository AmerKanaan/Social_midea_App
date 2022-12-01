import 'package:flutter/material.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'constants.dart';

class LogInFire extends StatefulWidget {
  const LogInFire({Key? key}) : super(key: key);

  @override
  _LogInFireState createState() => _LogInFireState();
}

class _LogInFireState extends State<LogInFire> {
  bool click = true;
  late String email;
  late String password;
  final _auth = FirebaseAuth.instance;
  bool showSpiner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpiner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset("images/logo.png"),
                  height: 200,
                ),
              ),
              SizedBox(
                height: 48,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
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
                height: 14,
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
                      try {
                        final newUser = await _auth.signInWithEmailAndPassword(
                            email: email, password: password);
                        if (newUser != null) {
                          Navigator.pushNamed(context, '/home');
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
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
