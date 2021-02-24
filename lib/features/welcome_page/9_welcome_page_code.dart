import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';
import 'package:flutterxui/features/login/9_login_code.dart';
import 'package:flutterxui/features/signup/9_signup_code.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
 */

class AuthThreePage extends StatefulWidget {
  static const routeName = '/AuthThreePage';
  @override
  _AuthThreePageState createState() => _AuthThreePageState();
}

class _AuthThreePageState extends State<AuthThreePage> {
  final String backImg =
  Constants.images[(new Random()).nextInt(Constants.images.length)];
  bool formVisible;
  int _formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///------------------------------------------------
        ///  Build main content with container.
        ///------------------------------------------------
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          ///------------------------------------------------
          ///  Adding image as a background .
          ///------------------------------------------------
          image: NetworkImage(backImg),
          fit: BoxFit.cover,
        ),
      ),

      ///------------------------------------------------
      ///  Build main content with Stack.
      ///------------------------------------------------
      child: Stack(
        children: <Widget>[


          Container(
            color: Colors.black54,
            child: Column(
              children: <Widget>[
                const SizedBox(height: kToolbarHeight + 40),
                Expanded(
                  child: Wrap(
                    children: <Widget>[
                      ///------------------------------------------------
                      ///  Welcome Header text .
                      ///------------------------------------------------
                      Text(
                        "Welcome",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30.0,
                        ),
                      ),
                      const SizedBox(height: 10.0),

                      ///------------------------------------------------
                      ///  Welcome Header text .
                      ///------------------------------------------------
                      Text(
                        "Welcome to this awesome FlutterX UI App. \n You are awesome",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18.0,
                        ),
//                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 10.0),
                    ///------------------------------------------------
                    ///  RaisedButton Sign in  .
                    ///------------------------------------------------
                    Expanded(
                      child: RaisedButton(
                        color: Colors.orange,
                        textColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Login"),
                        onPressed: () {
                          setState(() {
                            formVisible = true;
                            _formsIndex = 1;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10.0),

                    ///------------------------------------------------
                    ///  RaisedButton Sign up  .
                    ///------------------------------------------------
                    Expanded(
                      child: RaisedButton(
                        color: Colors.grey.shade700,
                        textColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text("Signup"),
                        onPressed: () {
                          setState(() {
                            formVisible = true;
                            _formsIndex = 2;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10.0),
                  ],
                ),
                const SizedBox(height: 40.0),

                ///------------------------------------------------
                ///  OutlineButton icon Sign up and sign in with google auth .
                ///------------------------------------------------
                OutlineButton.icon(
                  borderSide: BorderSide(color: Colors.orange),
                  color: Colors.orange,
                  textColor: Colors.white,
                  ///------------------------------------------------
                  ///  Changing corner shape of OutlineButton.
                  ///------------------------------------------------
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  icon: Icon(FontAwesomeIcons.google),
                  label: Text("Continue with Google"),
                  onPressed: () {},
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),


          ///------------------------------------------------
          ///  Animated widget for animate tow children.
          ///------------------------------------------------
          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child: (!formVisible)
                ? null
                : Container(
              color: Colors.black54,
              alignment: Alignment.center,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        textColor: _formsIndex == 1
                            ? Colors.white
                            : Colors.black,
                        color:
                        _formsIndex == 1 ? Colors.orange : Colors.white,
                        child: Text("Login"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        onPressed: () {
                          setState(() {
                            _formsIndex = 1;
                          });
                        },
                      ),
                      const SizedBox(width: 10.0),
                      RaisedButton(
                        textColor: _formsIndex == 2
                            ? Colors.white
                            : Colors.black,
                        color:
                        _formsIndex == 2 ? Colors.orange : Colors.white,
                        child: Text("Signup"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        onPressed: () {
                          setState(() {
                            _formsIndex = 2;
                          });
                        },
                      ),
                      const SizedBox(width: 10.0),
                      IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            formVisible = false;
                          });
                        },
                      )
                    ],
                  ),
                  Container(
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 300),
                      child:
                      _formsIndex == 1 ? LoginForm() : SignUpForm(),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
