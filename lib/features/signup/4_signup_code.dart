import 'package:flutter/material.dart';
import 'package:flutterxui/features/login/4_login_code.dart';

class SignUp extends StatelessWidget {
  static const routeName = '/SignUp';
  SignUp();

  @override
  Widget build(BuildContext context) {
    /// -----------------------------------------
    /// Building a sign up button for navigate to sign up interface.
    /// -----------------------------------------
    return new FlatButton(
        onPressed: () {
          Navigator.of(context).pushNamed(DarkRegister.routeName);
        },
        child: new Container(
          width: 280.0,
          height: 50.0,
          alignment: FractionalOffset.center,
          decoration: new BoxDecoration(
            color: const Color.fromRGBO(247, 64, 106, 1.0),
            borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
          ),

          /// -----------------------------------------
          /// Text widget as a child for container.
          /// -----------------------------------------
          child: new Text(
            "Sign Up",
            style: new TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.3,
            ),
          ),
        ));
  }
}

/// -----------------------------------------
/// DarkRegister widget which is a sign up interface.
/// -----------------------------------------
class DarkRegister extends StatefulWidget {
  static const routeName = '/DarkRegister';

  @override
  _DarkRegisterState createState() => _DarkRegisterState();
}

class _DarkRegisterState extends State<DarkRegister> {
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

                /// -----------------------------------------
                /// Build main content with ListView widget.
                /// -----------------------------------------
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
                            _buildSignUpForm(),
                            new SignUp(),
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
  /// Build main content with SignUp Form with helper method.
  /// -----------------------------------------
  Widget _buildSignUpForm() => new Container(
      margin: const EdgeInsets.only(top: 60.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new CircleAvatar(
            /// -----------------------------------------
            /// Adding image header for form.
            /// -----------------------------------------
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
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40.0, top: 20.0, bottom: 25.0),

              /// -----------------------------------------
              /// Adding Scrollable content for form .
              /// -----------------------------------------
              child: SingleChildScrollView(
                child: new Column(
                  children: <Widget>[
                    /// -----------------------------------------
                    /// Adding Text Form Field widget for username .
                    /// -----------------------------------------
                    new TextFormField(
                      style: new TextStyle(fontSize: 14),
                      decoration: new InputDecoration(
                        icon: new Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        hintText: "Enter UserName",
                        hintStyle: const TextStyle(
                            color: Colors.white, fontSize: 15.0),
                        contentPadding: const EdgeInsets.only(
                            top: 30.0, right: 30.0, bottom: 30.0, left: 5.0),
                      ),
                      validator: (val) =>
                          !val.contains("@") ? 'Invalid Email' : null,
                      keyboardType: TextInputType.emailAddress,
                    ),

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
                        hintStyle: const TextStyle(
                            color: Colors.white, fontSize: 15.0),
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
                        hintStyle: const TextStyle(
                            color: Colors.white, fontSize: 15.0),
                        contentPadding: const EdgeInsets.only(
                            top: 30.0, right: 30.0, bottom: 30.0, left: 5.0),
                      ),
                      validator: (val) =>
                          val.length < 6 ? 'Password too short' : null,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),

                    /// -----------------------------------------
                    /// Adding Text Form Field widget for Confirm Password .
                    /// -----------------------------------------

                    new TextFormField(
                      decoration: new InputDecoration(
                        icon: new Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                        ),
                        hintText: "Confirm Password",
                        hintStyle: const TextStyle(
                            color: Colors.white, fontSize: 15.0),
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
            ),
          ))
        ],
      ));
}
