import 'package:flutter/material.dart';
import 'package:flutterxui/features/signup/1_signup_code.dart';

// -------------------------------
//  This project written by : Thalisonh on Github.com
//  You can find this class and all its components
//  on this Repo  : https://github.com/Thalisonh/minimalist-flutter
// -------------------------------

class LoginPage1 extends StatefulWidget {
  static const routeName = '/LoginPage1';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.deepOrange, Colors.orange]),
        ),

        /// -------------------------------
        /// Building main content with list view
        /// -------------------------------

        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[

                  /// ---------------------------------------------------------------------------
                  /// Vertical Text widget that is build with RotatedBox widget  build in flutter
                  /// ---------------------------------------------------------------------------
                  VerticalText(),

                  /// ---------------------------------------------------------------------------
                  /// TextLogin widget that is build with Container widget  build in flutter
                  /// ---------------------------------------------------------------------------
                  TextLogin(),
                ]),

                /// ---------------------------------------------------------------------------
                /// InputEmail widget that is build with TextField widget  build in flutter and response size
                /// ---------------------------------------------------------------------------
                InputEmail(),

                /// ---------------------------------------------------------------------------
                /// PasswordInput widget that is build with TextField widget  build in flutter and response size
                /// ---------------------------------------------------------------------------
                PasswordInput(),

                /// ---------------------------------------------------------------------------
                /// ButtonLogin widget that is build with StatefulWidget and FlatButton widget build in flutter and response size
                /// ---------------------------------------------------------------------------
                ButtonLogin(),

                /// ---------------------------------------------------------------------------
                /// FirstTime widget that is build with StatefulWidget, Text and FlatButton widget build in flutter and response size
                /// ---------------------------------------------------------------------------
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



/// ---------------------------------------------------------------------------
/// ButtonLogin widget that is build with StatefulWidget and FlatButton widget build in flutter and response size
/// ---------------------------------------------------------------------------

class ButtonLogin extends StatefulWidget {
  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 50, left: 200),
      child: Container(
        alignment: Alignment.bottomRight,
        height: 50,
        width: MediaQuery.of(context).size.width,

        /// ------------------------------------------
        /// BoxDecoration for style the button
        /// ------------------------------------------
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.orange[300],
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: 1.0, // has the effect of extending the shadow
              offset: Offset(
                5.0, // horizontal, move right 10
                5.0, // vertical, move down 10
              ),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),

        /// ------------------------------------------
        /// FlatButton with OK text and arrow icon
        /// ------------------------------------------
        child: FlatButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'OK',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.deepOrange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/// ---------------------------------------------------------------------------
/// FirstTime widget that is build with StatefulWidget, Text and FlatButton widget build in flutter and response size
/// ---------------------------------------------------------------------------

class FirstTime extends StatefulWidget {
  @override
  _FirstTimeState createState() => _FirstTimeState();
}

class _FirstTimeState extends State<FirstTime> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: Container(
        alignment: Alignment.topRight,
        //color: Colors.red,
        height: 20,
        child: Row(
          children: <Widget>[
            Text(
              'Your first time?',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white70,
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewUser()));
              },
              child: Text(
                'Sing up',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/// ---------------------------------------------------------------------------
/// InputEmail widget that is build with TextField widget  build in flutter and response size
/// ---------------------------------------------------------------------------

class InputEmail extends StatefulWidget {
  @override
  _InputEmailState createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.lightBlueAccent,
            labelText: 'Name',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}


/// ---------------------------------------------------------------------------
/// PasswordInput widget that is build with TextField widget  build in flutter and response size
/// ---------------------------------------------------------------------------

class PasswordInput extends StatefulWidget {
  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}



/// ---------------------------------------------------------------------------
/// TextLogin widget that is build with Container widget  build in flutter
/// ---------------------------------------------------------------------------

class TextLogin extends StatefulWidget {
  @override
  _TextLoginState createState() => _TextLoginState();
}

class _TextLoginState extends State<TextLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 10.0),
      child: Container(
        //color: Colors.green,
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
            ),
            Center(
              child: Text(
                'Hello World \n FlutterX UI',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/// ---------------------------------------------------------------------------
/// Vertical Text widget that is build with RotatedBox widget  build in flutter
/// ---------------------------------------------------------------------------

class VerticalText extends StatefulWidget {
  @override
  _VerticalTextState createState() => _VerticalTextState();
}

class _VerticalTextState extends State<VerticalText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            'Sing in',
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
