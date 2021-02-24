import 'package:flutter/material.dart';

class TextFieldProperty extends StatefulWidget {
  static const routeName = '/TextFieldProperty';
  @override
  _TextFieldPropertyState createState() => _TextFieldPropertyState();
}

class _TextFieldPropertyState extends State<TextFieldProperty> {
  bool passwordVisible;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
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


              //========================================
              //   User Name text field with TextAlign
              //========================================
              Container(
                  margin: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "User Name",
                      alignLabelWithHint: false,
                    ),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.center,
                  )),



              //==========================
              //   Address text field
              //==========================
              Container(
                margin: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Address",
                    labelText: "Address",
                    alignLabelWithHint: false,
                  ),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,

                ),
              ),


              //=========================================
              //   Password text field with helper  text
              //=========================================
              Container(
                margin: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    alignLabelWithHint: false,
                    helperText: "The password should start with a big letter.",
                    helperStyle: TextStyle(color: Colors.black),
                  ),
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                ),
              ),


              //===========================================
              //  Phone Number text field with error text
              //===========================================
              Container(
                margin: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Phone Number",
                    labelText: "Phone Number",
                    alignLabelWithHint: false,
                    errorText: "The phone number is not valid.",
                  ),
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.done,
                ),
              ),



              //=============================================
              //  Contact Number text field with prefixText
              //=============================================
              Container(
                margin: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color: Colors.teal),
                  decoration: InputDecoration(
                    hintText: "Enter Contact Number",
                    labelText: "Contact Number",
                    prefixText: "+1",
                    alignLabelWithHint: false,
                  ),
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.done,
                ),
              ),



              //====================================================
              //  Message text field with prefixText and suffixText
              //====================================================
              Container(
                margin: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color: Colors.teal),
                  decoration: InputDecoration(
                    hintText: "write...",
                    labelText: "Textfield with Suffix and Prefix text",
                    prefixText: "Message:",
                    suffixText: "With regards.",
                    alignLabelWithHint: false,
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                ),
              ),



              //============================================================
              //  Phone Number text field with prefixText (ex:Country code)
              //============================================================
              Container(
                margin: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color: Colors.teal),
                  decoration: InputDecoration(
                    hintText: "Enter Phone Number",
                    labelText: "Phone Number",
                    prefixText: "+416",
                    alignLabelWithHint: false,
                  ),
                  maxLength: 9,
                  obscureText: true,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.done,
                ),
              ),



              //==========================================
              //  Ticket Form text field with multi line
              //==========================================
              Container(
                margin: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color: Colors.teal),
                  decoration: InputDecoration(
                    labelText: "Ticket Form ",
                    alignLabelWithHint: false,
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
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