
import 'package:flutter/material.dart';
import 'package:flutterxui/features/signup/4_signup_code.dart';

class DarkLoginPage extends StatefulWidget {
  static const routeName = '/DarkLoginPage';
  @override
  _DarkLoginPageState createState() => _DarkLoginPageState();
}

class _DarkLoginPageState extends State<DarkLoginPage> {
  @override
  Widget build(BuildContext context) {

    /// -----------------------------------------
    /// Build main content with safeArea widget fro status bar area.
    /// -----------------------------------------
    return SafeArea(
      child: (new Scaffold(
        body: new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(

                /// -----------------------------------------
                /// Adding image decoration for background.
                /// -----------------------------------------
                image: new AssetImage('assets/images/wood_bk.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: new Container(
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                    colors: <Color>[
                      /// -----------------------------------------
                      /// Adding some shadow for background.
                      /// -----------------------------------------
                      const Color.fromRGBO(0, 0, 0, 0.6),
                      const Color.fromRGBO(0, 0, 0, 0.6),
                    ],
                    stops: [0.2, 1.0],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.0, 1.0),
                  ),
                ),
                child: new ListView(
                  padding: const EdgeInsets.all(0.0),
                  children: <Widget>[

                    /// -----------------------------------------
                    /// Build main content with stack widget.
                    /// -----------------------------------------
                    new Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: <Widget>[
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            _buildSignInForm(),
                            //  new SignIn(),
                            new SignUp()
                          ],
                        ),
                      ],
                    ),
                  ],
                ))),
      )),
    );
  }

  /// -----------------------------------------
  /// Build main content with SignIn Form with helper method.
  /// -----------------------------------------
  Widget _buildSignInForm() => new Container(
      margin: const EdgeInsets.only(top: 60.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          /// -----------------------------------------
          /// Adding image header for form.
          /// -----------------------------------------
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/fish.jpg'),
            radius: MediaQuery.of(context).size.height >
                MediaQuery.of(context).size.width
                ? MediaQuery.of(context).size.height / 10
                : MediaQuery.of(context).size.width / 10,
          ),

          /// -----------------------------------------
          /// Adding form widget .
          /// -----------------------------------------
          new Form(
              child: new Theme(
                data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(
                        labelStyle:
                        new TextStyle(color: Colors.teal, fontSize: 20.0))),
                child: new Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  padding: const EdgeInsets.all(40.0),
                  child: new Column(
                    children: <Widget>[

                      /// -----------------------------------------
                      /// Adding Text Form Field widget for email .
                      /// -----------------------------------------
                      new TextFormField(
                        style: new TextStyle(fontSize: 14),
                        decoration: new InputDecoration(
                          icon: new Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          hintText: "Enter Email",
                          hintStyle:
                          const TextStyle(color: Colors.white, fontSize: 15.0),
                          contentPadding: const EdgeInsets.only(
                              top: 30.0, right: 30.0, bottom: 30.0, left: 5.0),
                        ),
                        validator: (val) =>
                        !val.contains("@") ? 'Invalid Email' : null,
                        keyboardType: TextInputType.emailAddress,
                      ),

                      /// -----------------------------------------
                      /// Adding Text Form Field widget for password .
                      /// -----------------------------------------
                      new TextFormField(
                        decoration: new InputDecoration(
                          icon: new Icon(
                            Icons.lock_outline,
                            color: Colors.white,
                          ),
                          hintText: "Enter Password",
                          hintStyle:
                          const TextStyle(color: Colors.white, fontSize: 15.0),
                          contentPadding: const EdgeInsets.only(
                              top: 30.0, right: 30.0, bottom: 30.0, left: 5.0),
                        ),
                        validator: (val) =>
                        val.length < 6 ? 'Password too short' : null,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ));
}