import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  static const routeName = '/SignUpForm';
    SignUpForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ///------------------------------------------------
    ///  Build main content with container.
    ///------------------------------------------------
    return Container(
      margin: const EdgeInsets.all(16.0),

      ///------------------------------------------------
      ///  Changing container shape background.
      ///------------------------------------------------
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),

      ///------------------------------------------------
      ///  Build scrollable main content with listView.
      ///------------------------------------------------
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[

          ///------------------------------------------------
          ///  TextField for entering Email.
          ///------------------------------------------------
          TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),

          ///------------------------------------------------
          ///  TextField for entering password.
          ///------------------------------------------------
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),

          ///------------------------------------------------
          ///  TextField for entering Confirm password.
          ///------------------------------------------------
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Confirm password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),

          ///------------------------------------------------
          ///  RaisedButton for submitting Sign up data.
          ///------------------------------------------------
          RaisedButton(
            color: Colors.orange,
            textColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text("Signup"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

