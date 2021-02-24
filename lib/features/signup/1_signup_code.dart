import 'package:flutter/material.dart';
import 'package:flutterxui/features/login/1_login_code.dart';


// -------------------------------
//  This project written by : Thalisonh on Github.com
//  You can find this class and all its components
//  on this Repo  : https://github.com/Thalisonh/minimalist-flutter
// -------------------------------

/// ---------------------------------------------------------------------------
/// NewUser widget that is build with StatefulWidget for signing up page
/// ---------------------------------------------------------------------------
class NewUser extends StatefulWidget {
  static const routeName = '/NewUser';
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
        /// -----------------------------
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[

                    /// ---------------------------------------------------------------------------
                    /// SingUp widget that is build with StatefulWidget, Text and RotatedBox widget
                    /// build in flutter for signing up account
                    /// ---------------------------------------------------------------------------
                    SingUp(),

                    /// ---------------------------------------------------------------------------
                    ///  Text widget that is build with Container and text widget which build in flutter
                    /// ---------------------------------------------------------------------------
                    TextNew(),
                  ],
                ),


                /// ---------------------------------------------------------------------------
                /// NewName widget that is build with TextField and Container widget build in flutter and response size
                /// ---------------------------------------------------------------------------
                NewName(),

                /// ---------------------------------------------------------------------------
                /// NewEmail widget that is build with TextField and Container widget build in flutter and response size
                /// with some input decoration
                /// ---------------------------------------------------------------------------
                NewEmail(),

                /// ---------------------------------------------------------------------------
                /// PasswordInput widget that is build with TextField widget  build in flutter and response size
                /// ---------------------------------------------------------------------------
                PasswordInput(),

                /// ---------------------------------------------------------------------------
                /// ButtonNewUser widget that is build with Container and FlatButton widget build in flutter and response size
                /// with some Box Decoration
                /// ---------------------------------------------------------------------------
                ButtonNewUser(),

                /// ---------------------------------------------------------------------------
                /// FlatButton widget that is build with Container and FlatButton widget build in flutter and response size
                /// with some Box Decoration
                /// which uses for navigation to LoginPage
                /// ---------------------------------------------------------------------------
                UserOld(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// ---------------------------------------------------------------------------
/// SingUp widget that is build with StatefulWidget, Text and RotatedBox widget
/// build in flutter for signing up account
/// ---------------------------------------------------------------------------

class SingUp extends StatefulWidget {
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            'Sing up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}

/// ---------------------------------------------------------------------------
///  Text widget that is build with Container and text widget which build in flutter
/// ---------------------------------------------------------------------------

class TextNew extends StatefulWidget {
  @override
  _TextNewState createState() => _TextNewState();
}

class _TextNewState extends State<TextNew> {
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
/// NewName widget that is build with TextField and Container widget build in flutter and response size
/// ---------------------------------------------------------------------------

class NewName extends StatefulWidget {
  @override
  _NewNameState createState() => _NewNameState();
}

class _NewNameState extends State<NewName> {
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
/// NewEmail widget that is build with TextField and Container widget build in flutter and response size
/// with some input decoration
/// ---------------------------------------------------------------------------

class NewEmail extends StatefulWidget {
  @override
  _NewEmailState createState() => _NewEmailState();
}

class _NewEmailState extends State<NewEmail> {
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
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.lightBlueAccent,
            labelText: 'E-mail',
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
/// ButtonNewUser widget that is build with Container and FlatButton widget build in flutter and response size
/// with some Box Decoration
/// ---------------------------------------------------------------------------

class ButtonNewUser extends StatefulWidget {
  @override
  _ButtonNewUserState createState() => _ButtonNewUserState();
}

class _ButtonNewUserState extends State<ButtonNewUser> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 50, left: 200),
      child: Container(
        alignment: Alignment.bottomRight,
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.orange[300],
            blurRadius: 10.0, // has the effect of softening the shadow
            spreadRadius: 1.0, // has the effect of extending the shadow
            offset: Offset(
              5.0, // horizontal, move right 10
              5.0, // vertical, move down 10
            ),
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
/// FlatButton widget that is build with Container and FlatButton widget build in flutter and response size
/// with some Box Decoration
/// which uses for navigation to LoginPage
/// ---------------------------------------------------------------------------

class UserOld extends StatelessWidget {
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
              'Have we met before?',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white70,
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => LoginPage1()));
              },
              child: Text(
                'Sing in',
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