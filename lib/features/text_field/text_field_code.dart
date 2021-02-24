import 'package:flutter/material.dart';

class BasicTextField extends StatefulWidget {
  static const routeName = '/BasicTextField';
  @override
  _BasicTextFieldState createState() => _BasicTextFieldState();
}

class _BasicTextFieldState extends State<BasicTextField> {

  bool passwordVisible;

  @override
  void initState() {
    super.initState();
    passwordVisible=true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),


              //=================
              //   Text Field
              //=================

              Container(
                margin: const EdgeInsets.all( 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter text",
                    labelText: "Text Field",
                    alignLabelWithHint: false,
                    filled: true,
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                ),
              ),


              //====================
              //  Name text field
              //====================
              Container(
                margin: const EdgeInsets.all( 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    labelText: "Name",
                    alignLabelWithHint: false,
                    icon: Icon(Icons.person_outline),
                    filled: true,
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                ),
              ),


              //====================
              //  E-Mail field
              //====================
              Container(
                margin: const EdgeInsets.all( 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "E-Mail",
                    alignLabelWithHint: false,
                    prefixIcon: Icon(Icons.alternate_email),
                    filled: true,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                ),
              ),



              //=======================
              //  Password text field
              //=======================
              Container(
                margin: const EdgeInsets.all( 8.0),
                child: TextField(
                  obscureText: passwordVisible,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: UnderlineInputBorder(),
                      alignLabelWithHint: false,
                      filled: true,
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      )),
                ),
              ),


              //===========================
              //  Phone Number text field
              //===========================
              Container(
                margin: const EdgeInsets.all( 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Phone Number",
                    alignLabelWithHint: false,
                    prefixIcon: Icon(Icons.phone,color: Colors.blue),
                    filled: true,
                  ),
                  textInputAction: TextInputAction.done,
                ),
              ),


              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}