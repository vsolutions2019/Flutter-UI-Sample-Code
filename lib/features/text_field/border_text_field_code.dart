import 'package:flutter/material.dart';

class TextFieldBorder extends StatefulWidget {
  static const routeName = '/TextFieldBorder';
  @override
  _TextFieldBorderState createState() => _TextFieldBorderState();
}

class _TextFieldBorderState extends State<TextFieldBorder> {

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

              //========================================================
              //You can control the length and width of the input text
              //by selecting the length and width of container
              //========================================================


              //========================
              //  UserName Text Field
              //========================
              Container(
                margin: const EdgeInsets.all( 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter UserName",
                    labelText: "UserName",
                    alignLabelWithHint: false,
                    fillColor: Colors.blue,
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                ),
              ),


              //========================
              //  Subject Text Field
              //========================
              Container(
                margin: const EdgeInsets.all( 8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                      ),
                      hintText: "Subject",
                      alignLabelWithHint: false,
                      filled: true),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                ),
              ),


              //========================
              //  Message Text Field
              //========================
              Container(
                margin: const EdgeInsets.all( 8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Message",
                      alignLabelWithHint: false,
                      filled: true),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                ),
              ),


              //========================
              //  E-Mail Text Field
              //========================
              Container(
                margin: const EdgeInsets.all( 8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "E-Mail",
                      alignLabelWithHint: false,
                      filled: true),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                ),
              ),



              //================================
              //  New Phone Number Text Field
              //================================
              Container(
                margin: const EdgeInsets.all( 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "New Phone Number",
                    labelText: "New Phone Number",
                    alignLabelWithHint: false,
                    filled: true,
                  ),
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.done,
                ),
              ),



              //========================
              //  Address Text Field
              //========================
              Container(
                margin: const EdgeInsets.all( 8.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    hintText: "Address",
                    hintStyle: TextStyle(color: Colors.white),
                    alignLabelWithHint: false,
                    fillColor:Colors.blue,
                    filled: true,
                  ),
                  textInputAction: TextInputAction.done,
                ),
              ),


              //========================
              //  Ticket Form Text Field
              //========================
              Container(
                margin: const EdgeInsets.all( 8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Ticket Form",
                      hintText: "write....",
                      alignLabelWithHint: false,
                      filled: true),
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
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