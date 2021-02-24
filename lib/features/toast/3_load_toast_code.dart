import 'package:flutter/material.dart';
import 'package:load_toast/load_toast.dart';

/// this class uses this library load_toast
/// Link to it : https://pub.dev/packages/load_toast#-installing-tab-

class LoadToastPage extends StatefulWidget {
  static const routeName = '/LoadToastPage';

  @override
  _LoadToastPageState createState() => _LoadToastPageState();
}

class _LoadToastPageState extends State<LoadToastPage> {
  LoadToast load_toast = LoadToast(
    backgroundColor: Colors.greenAccent,
    circularIndicatorColor: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      /// ----------------------------------------------------------
      /// Build main content with stack widget
      /// ----------------------------------------------------------
      body: Stack(
        children: <Widget>[
          /// ----------------------------------------------------------
          /// Positioned show toast Raised Button
          /// ----------------------------------------------------------
          Positioned(
              top: 190.0,
              left: 20.0,
              right: 20.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  load_toast.show();
                },
                child: SizedBox(
                  height: 50.0,
                  child: Center(
                    child: Text(
                      'Show toast',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                color: Colors.blueAccent,
              )),

          /// ----------------------------------------------------------
          /// Positioned Success action Raised Button
          /// ----------------------------------------------------------

          Positioned(
              top: 260.0,
              left: 20.0,
              right: 20.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  load_toast.success();
                },
                child: SizedBox(
                  height: 50.0,
                  child: Center(
                    child: Text('Success',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                color: Colors.green,
              )),

          /// ----------------------------------------------------------
          /// Positioned Error action Raised Button
          /// ----------------------------------------------------------
          Positioned(
              top: 320.0,
              left: 20.0,
              right: 20.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  load_toast.error();
                },
                child: SizedBox(
                  height: 50.0,
                  child: Center(
                    child: Text('Error',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                color: Colors.red,
              )),

          /// ----------------------------------------------------------
          /// Positioned Warning action Raised Button
          /// ----------------------------------------------------------
          Positioned(
              top: 380.0,
              left: 20.0,
              right: 20.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {
                  load_toast.warning();
                },
                child: SizedBox(
                  height: 50.0,
                  child: Center(
                    child: Text('Warning',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                color: Colors.yellow,
              )),
          load_toast
        ],
      ),
    );
  }
}
