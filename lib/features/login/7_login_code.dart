import 'package:flutter/material.dart';

class LoginPage7 extends StatelessWidget {
  static const routeName = '/LoginPage7';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          /// --------------------------------------
          /// back ground image
          /// --------------------------------------
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo_home.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter)),
          ),

          /// --------------------------------------
          /// back ground shape main content
          /// --------------------------------------
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 270),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(23),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child:Container(
                      color: Color(0xfff5f5f5),
                      child: TextFormField(
                        /// --------------------------------------
                        /// Text Form Field for submitting Username
                        /// --------------------------------------
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'SFUIDisplay'),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.person,color: Color(0xffff2d55),),
                            labelStyle: TextStyle(fontSize: 15)),
                      ),
                    ),

                  ),

                  /// --------------------------------------
                  /// Text Form Field for submitting password
                  /// --------------------------------------
                  Container(
                    color: Color(0xfff5f5f5),
                    child: TextFormField(
                      obscureText: true,
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'SFUIDisplay'),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock_outline),
                          labelStyle: TextStyle(fontSize: 15)),
                    ),
                  ),

                  /// --------------------------------------
                  /// MaterialButton for execute sign in button
                  /// --------------------------------------
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: MaterialButton(
                      onPressed: () {},
                      //since this is only a UI app
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'SFUIDisplay',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Color(0xffff2d55),
                      elevation: 0,
                      minWidth: 400,
                      height: 50,
                      textColor: Colors.white,


                      /// --------------------------------------
                      /// changing border shape of material button.
                      /// --------------------------------------
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),

                  /// --------------------------------------
                  /// Text Forgot your password.
                  /// --------------------------------------
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(
                            fontFamily: 'SFUIDisplay',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  /// --------------------------------------
                  /// Text Don't have an account.
                  /// --------------------------------------
                   Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Center(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(
                                fontFamily: 'SFUIDisplay',
                                color: Colors.black,
                                fontSize: 15,
                              )),

                          /// --------------------------------------
                          /// Text sign up.
                          /// --------------------------------------
                          TextSpan(
                              text: "sign up",
                              style: TextStyle(
                                fontFamily: 'SFUIDisplay',
                                color: Color(0xffff2d55),
                                fontSize: 15,
                              ))
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
