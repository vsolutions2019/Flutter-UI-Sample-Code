import 'dart:math';

/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
 */

import 'package:flutter/material.dart';





class LoginPage11 extends StatelessWidget {
  static const routeName = '/LoginPage11';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height ;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: width,
              height: height,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.indigoAccent, Colors.deepPurple],
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                    height: 80,
                  ),
                  Text(
                    "FlutterX UI",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 40.0),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(16.0),
                      prefixIcon: Container(
                          padding:
                          const EdgeInsets.only(top: 16.0, bottom: 16.0),
                          margin: const EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(10.0))),
                          child: Icon(
                            Icons.person,
                            color: Colors.lightBlue,
                          )),
                      hintText: "enter your email",
                      hintStyle: TextStyle(color: Colors.white54),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(16.0),
                      prefixIcon: Container(
                          padding:
                          const EdgeInsets.only(top: 16.0, bottom: 16.0),
                          margin: const EdgeInsets.only(right: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomRight: Radius.circular(10.0))),
                          child: Icon(
                            Icons.lock,
                            color: Colors.lightBlue,
                          )),
                      hintText: "enter your password",
                      hintStyle: TextStyle(color: Colors.white54),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 30.0),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.white,
                      textColor: Colors.lightBlue,
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Login".toUpperCase()),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        textColor: Colors.white70,
                        child: Text("Create Account".toUpperCase()),
                        onPressed: () {},
                      ),
                      Container(
                        color: Colors.white54,
                        width: 2.0,
                        height: 20.0,
                      ),
                      FlatButton(
                        textColor: Colors.white70,
                        child: Text("Forgot Password".toUpperCase()),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  //SizedBox(height: 10.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
