import 'package:flutter/material.dart';
import 'package:flutterxui/features/login/2_login_code.dart';
import 'package:flutterxui/features/signup/2_signup_code.dart';
import 'package:google_fonts/google_fonts.dart';


// -------------------------------
//  This project written   on Github.com
//  You can find this class and all its components
//  on this Repo  : https://github.com/TheAlphamerc/flutter_login_signup
// -------------------------------

class WelcomePage extends StatefulWidget {
  static const routeName = '/WelcomePage';
  WelcomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// -----------------------------------------
      /// Build main content with scrollable content
      /// -----------------------------------------
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,

          /// -----------------------------------------
          /// Make  LinearGradient shape for background color
          /// -----------------------------------------
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.lightBlueAccent, Colors.red])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              /// -----------------------------------------
              /// Text title  header
              /// -----------------------------------------
              _title(),

              SizedBox(
                height: 80,
              ),

              /// -----------------------------------------
              /// Login button for navigate to login page
              /// -----------------------------------------
              _submitButton(),

              SizedBox(
                height: 20,
              ),

              /// -----------------------------------------
              /// sign up button for navigate to sign up page
              /// -----------------------------------------
              _signUpButton(),

              SizedBox(
                height: 20,
              ),

              /// -----------------------------------------
              /// Login with touch id fingerprint
              /// -----------------------------------------
              _label()
            ],
          ),
        ),
      ),
    );
  }

  /// -----------------------------------------
  /// Login button for navigate to login page  with helper method
  /// -----------------------------------------
  Widget _submitButton() {

    /// -----------------------------------------
    /// make clickable text widget and navigation logic to it
    /// -----------------------------------------
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage2()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,

        /// -----------------------------------------
        /// make some stylish with box decoration
        /// -----------------------------------------
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.red.withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ],
            color: Colors.white),
        child: Text(
          'Login',
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
      ),
    );
  }


  /// -----------------------------------------
  /// sign up button for navigate to sign up page  with helper method
  /// -----------------------------------------
  Widget _signUpButton() {

    /// -----------------------------------------
    /// make clickable text widget and navigation logic to it
    /// -----------------------------------------
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,

        /// -----------------------------------------
        /// make some stylish with box decoration
        /// -----------------------------------------
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Text(
          'Register now',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }


  /// -----------------------------------------
  /// Login with touch id fingerprint with helper method
  /// -----------------------------------------
  Widget _label() {
    return Container(
        margin: EdgeInsets.only(top: 40, bottom: 20),
        child: Column(
          children: <Widget>[



            SizedBox(
              height: 20,
            ),

            /// -----------------------------------------
            /// Icons finger print
            /// -----------------------------------------
            Icon(Icons.fingerprint, size: 90, color: Colors.white),

            SizedBox(
              height: 20,
            ),

            /// -----------------------------------------
            /// Text title
            /// -----------------------------------------
            Text(
              'Touch ID',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ));
  }

  /// -----------------------------------------
  /// Text title  header helper method
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
            color: Colors.white,
          ),
          children: [

            /// -----------------------------------------
            /// make custom Text title with custom color.
            /// -----------------------------------------
            TextSpan(
              text: 'X',
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),

            /// -----------------------------------------
            /// make custom Text title with custom color.
            /// -----------------------------------------
            TextSpan(
              text: ' UI',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ]),
    );
  }
}
