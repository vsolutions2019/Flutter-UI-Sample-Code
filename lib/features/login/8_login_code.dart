import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginPag8 extends StatelessWidget {
  static const routeName = '/LoginPag8';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(

        /// -----------------------------------------
        /// Build image background.
        /// ----------------------------------------
        image: NetworkImage(Constants.images[8]),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// -----------------------------------------
        /// Build main content with container .
        /// ----------------------------------------
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
        ),
          child: Padding(
            padding: EdgeInsets.all(23),

            /// -----------------------------------------
            /// Build scrollable  main content with listView.
            /// ----------------------------------------
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),

                /// -----------------------------------------
                /// Build Form for adding TextFormField email and password for user management.
                /// ----------------------------------------
                Form(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),

                        /// -----------------------------------------
                        /// Text Form Field for Username.
                        /// ----------------------------------------
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: 'Username',
                              labelStyle:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ),
                      ),

                      /// -----------------------------------------
                      /// Text Form Field for Password.
                      /// ----------------------------------------
                      TextFormField(
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            labelText: 'Password',
                            labelStyle:
                                TextStyle(fontSize: 15, color: Colors.white)),
                      )
                    ],
                  ),
                ),

                /// -----------------------------------------
                /// Text Forgot your password.
                /// ----------------------------------------
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 5),
                  child: Text(
                    'Forgot your password?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: 'SFUIDisplay',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),


                /// -----------------------------------------
                /// MaterialButton sign in .
                /// ----------------------------------------
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'SFUIDisplay',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    color: Color(0xffff2d55),
                    elevation: 0,
                    minWidth: 350,
                    height: 60,


                    /// -----------------------------------------
                    /// changing corner shape of material button.
                    /// ----------------------------------------
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),


                /// -----------------------------------------
                /// MaterialButton sign in with facebook auth.
                /// ----------------------------------------
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.facebookSquare),
                        Text(
                          'Sign up with facebook',
                          style: TextStyle(
                              fontSize: 15, fontFamily: 'SFUIDisplay'),
                        )
                      ],
                    ),
                    color: Colors.transparent,
                    elevation: 0,
                    minWidth: 350,
                    height: 60,
                    textColor: Colors.white,

                    /// -----------------------------------------
                    /// changing corner shape of material button.
                    /// ----------------------------------------
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.white)),
                  ),
                ),

                /// -----------------------------------------
                /// Text Don't have an account.
                /// ----------------------------------------
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Center(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(
                              fontFamily: 'SFUIDisplay',
                              color: Colors.white,
                              fontSize: 15,
                            )),

                        /// -----------------------------------------
                        /// Text sign up.
                        /// ----------------------------------------
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
        ),
      ),
    );
  }
}
