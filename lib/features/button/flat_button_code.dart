import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/// ---------------------------
///   Flat Buttons widgets goes here.
/// ---------------------------

class FlatButtons extends StatefulWidget {
  static const routeName = '/FlatButtons';
  @override
  _FlatButtonsState createState() => _FlatButtonsState();
}

class _FlatButtonsState extends State<FlatButtons> {

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

                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      //====================
                      //    enable  flat button with / without icon
                      //====================
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: FlatButton(
                              child: Text("Flat button"),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: FlatButton.icon(
                              label: Text("Add"),
                              icon: Icon(Icons.add),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),


                      //====================
                      //   Disable flat button
                      //====================

                      Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: FlatButton(
                              child: Text("DESABLE flat BUTTON",
                                  textAlign: TextAlign.center),
                              onPressed: null)),


                      //====================
                      //   Disable flat button with icon
                      //====================

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: FlatButton.icon(
                          label:
                          Text("DESABLE BUTTON", textAlign: TextAlign.center),
                          icon: Icon(Icons.account_balance),
                          onPressed: null,
                        ),
                      ),


                      //====================
                      //   shaped enable  flat button
                      //====================

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: FlatButton(
                          child: Text("Rectengle border"),
                          shape: Border.all(),
                          onPressed: () {},
                        ),
                      ),


                      //====================
                      //  enable rounded shaped flat button
                      //====================

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: FlatButton(
                          child: Text("Rounded border"),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.green)),
                          onPressed: () {},
                        ),
                      ),


                      //====================
                      //  enable rounded corner colored shaped flat button
                      //====================

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: FlatButton(
                          child: Text("Rounded Colored border"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.deepPurple)),
                          onPressed: () {},
                        ),
                      ),

                       //====================
                      //  enable circular colored shaped flat button
                      //====================

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: FlatButton(
                          child: Text("Rounded Colored border"),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.amber)),
                          onPressed: () {},
                        ),
                      ),


                      //====================
                      //    text styling  colored  flat button
                      //====================

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: FlatButton(
                          child: Text(
                            "Text Style of Label",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontStyle: FontStyle.italic,
                                fontSize: 18.0),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.grey)),
                          onPressed: () {},
                        ),
                      ),


                      //====================
                      //    rounded rectangle fill colored  flat button
                      //====================

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: FlatButton(
                          child: Text("fill color rectengle button"),
                          shape: Border.all(),
                          color: Colors.deepOrangeAccent,
                          onPressed: () {},
                        ),
                      ),

                       //====================
                      //     circular rectangle fill colored  flat button
                      //====================

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: FlatButton(
                          child: Text("fill color round button"),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide()),
                          color: Colors.lightGreenAccent,
                          onPressed: () {},
                        ),
                      ),

                       //====================
                      //  fill colored background rectangle rounded flat button
                      //====================

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      tileMode: TileMode.repeated,
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.lightBlue,
                                        Colors.deepOrangeAccent,
                                      ])),
                              child: FlatButton(
                                child: Text(
                                  "Rectengle Gradient",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),


                          //====================
                          //  fill colored background rectangle rounded flat button
                          //====================


                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.deepOrangeAccent,
                                        Colors.lightBlueAccent,
                                      ])),

                              child: FlatButton(
                                child: Text(
                                  "Rounded Gradient",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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