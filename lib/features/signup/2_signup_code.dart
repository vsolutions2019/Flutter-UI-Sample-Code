import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterxui/features/login/2_login_code.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = '/SignUpPage';
  SignUpPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// -----------------------------------------
      /// Build main content with scrollable content with responsive size with help of mediaQuery
      /// -----------------------------------------
        body: SingleChildScrollView(
            child: Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Expanded(
                  flex: 3,
                  child: SizedBox(),
                ),

                /// -----------------------------------------
                /// Text title  header
                /// -----------------------------------------
                _title(),

                SizedBox(
                  height: 50,
                ),

                /// -----------------------------------------
                /// Email and password text title and textField helper method.
                /// -----------------------------------------
                _emailPasswordWidget(),

                SizedBox(
                  height: 20,
                ),

                /// -----------------------------------------
                /// SignUp button for submit  SignUp date
                /// -----------------------------------------
                _submitButton(),

                Expanded(
                  flex: 2,
                  child: SizedBox(),
                )

              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: _loginAccountLabel(),
          ),


          /// -----------------------------------------
          /// Positioned back Button to top left corner.
          /// -----------------------------------------
          Positioned(top: 40, left: 0, child: _backButton()),

          /// -----------------------------------------
          /// Positioned BezierContainer to top right corner with responsive positions according to mediaQuary.
          /// -----------------------------------------
          Positioned(
              top: -MediaQuery.of(context).size.height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer())
        ],
      ),
    )));
  }

  /// -----------------------------------------
  /// Positioned back Button to top left corner helper method with pop page logic.
  /// -----------------------------------------
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  /// -----------------------------------------
  /// generic text title and textField helper method.
  /// -----------------------------------------
  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// -----------------------------------------
          /// text title widget.
          /// -----------------------------------------
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),

          SizedBox(
            height: 10,
          ),

          /// -----------------------------------------
          /// TextField widget with some styling.
          /// -----------------------------------------
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }


  /// -----------------------------------------
  /// SignUp button for submit  SignUp date helper method
  /// -----------------------------------------
  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],

          /// -----------------------------------------
          /// Make  LinearGradient shape for button background color
          /// -----------------------------------------
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.lightBlueAccent, Colors.red])),

      /// -----------------------------------------
      /// child text widget submit to button
      /// -----------------------------------------
      child: Text(
        'Register Now',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget _loginAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Already have an account ?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600,color: Colors.redAccent),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage2()));
            },
            child: Text(
              'Login',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

  /// -----------------------------------------
  /// Text title  header with helper method
  /// -----------------------------------------
  Widget _title() {

    /// -----------------------------------------
    /// make custom Text title with custom font, theme, color, size and font family.
    /// -----------------------------------------
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Flutter',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.red,
          ),
          children: [

            /// -----------------------------------------
            /// make custom Text title with custom color.
            /// -----------------------------------------
            TextSpan(
              text: 'X',
              style: TextStyle(color: Colors.blueAccent, fontSize: 30),
            ),

            /// -----------------------------------------
            /// make custom Text title with custom color.
            /// -----------------------------------------
            TextSpan(
              text: ' UI',
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),

          ]),
    );
  }


  /// -----------------------------------------
  /// Email and password text title and textField helper method.
  /// -----------------------------------------
  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[

        /// -----------------------------------------
        /// Username text title and textField helper method.
        /// -----------------------------------------
        _entryField("Username"),

        /// -----------------------------------------
        /// Email text title and textField helper method.
        /// -----------------------------------------
        _entryField("Email id"),

        /// -----------------------------------------
        /// Password text title and textField helper method.
        /// -----------------------------------------
        _entryField("Password", isPassword: true),
      ],
    );
  }
}

/// -----------------------------------------
/// Shaped BezierContainer widget is custom shape and color.
/// -----------------------------------------
class BezierContainer extends StatelessWidget {
  const BezierContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      /// -----------------------------------------
      /// Rotate shape with Transform.rotate.
      /// -----------------------------------------
        child: Transform.rotate(
      angle: -pi / 3.9,
      child: ClipPath(
        clipper: ClipPainter(),


        /// -----------------------------------------
        /// Make a responsive container color with custom paint.
        /// -----------------------------------------
        child: Container(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.lightBlueAccent, Colors.red])),
        ),
      ),
    ));
  }
}

/// -----------------------------------------
/// ClipPainter is Custom paint  that extends CustomClipper.
/// -----------------------------------------
class ClipPainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var path = new Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, height);
    path.lineTo(size.width, 0);

    /// [Top Left corner]
    var secondControlPoint = Offset(0, 0);
    var secondEndPoint = Offset(width * .2, height * .3);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    /// [Left Middle]
    var fifthControlPoint = Offset(width * .3, height * .5);
    var fiftEndPoint = Offset(width * .23, height * .6);
    path.quadraticBezierTo(fifthControlPoint.dx, fifthControlPoint.dy,
        fiftEndPoint.dx, fiftEndPoint.dy);

    /// [Bottom Left corner]
    var thirdControlPoint = Offset(0, height);
    var thirdEndPoint = Offset(width, height);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
