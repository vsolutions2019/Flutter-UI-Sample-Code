import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

/// this class uses this library : FlutterToast
/// Link to it on github : https://github.com/appdev/FlutterToast

class SimpleToast extends StatefulWidget {
  static const routeName = '/SimpleToast';

  @override
  _SimpleToastState createState() => new _SimpleToastState();
}

class _SimpleToastState extends State<SimpleToast> {
  @override
  Widget build(BuildContext context) {

   /// ------------------------------------
    /// Build Main content with SafeArea widget
    /// ------------------------------------
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),

              /// ------------------------------------
              /// RaisedButton widget
              /// ------------------------------------
              child: RaisedButton(
                  child: Text('Show Short Toast'),
                  onPressed: () => showToast("Show Short Toast")),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),

              /// ------------------------------------
              /// RaisedButton widget
              /// ------------------------------------

              child: RaisedButton(
                  child: Text('Show Long Toast'),
                  onPressed: () => showToast("Show Long Toast",
                      duration: Toast.LENGTH_LONG)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),

              /// ------------------------------------
              /// RaisedButton widget
              /// ------------------------------------
              child: RaisedButton(
                  child: Text('Show Bottom Toast'),
                  onPressed: () =>
                      showToast("Show Bottom Toast", gravity: Toast.BOTTOM)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),

              /// ------------------------------------
              /// RaisedButton widget
              /// ------------------------------------
              child: RaisedButton(
                  child: Text('Show Center Toast'),
                  onPressed: () =>
                      showToast("Show Center Toast", gravity: Toast.CENTER)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),

              /// ------------------------------------
              /// RaisedButton widget
              /// ------------------------------------
              child: RaisedButton(
                  child: Text('Show Top Toast'),
                  onPressed: () => showToast(
                      "This is a long toast, This is a long toast, This is a long toast, "
                      "This is a long toast, This is a long toast, This is a long toast,"
                      " This is a long toast, ",
                      gravity: Toast.TOP)),
            ),
          ],
        ),
      ),
    );
  }

  /// ------------------------------------
  /// showToast helper method
  /// ------------------------------------

  void showToast(String msg, {int duration, int gravity}) {

    Toast.show(msg, context, duration: duration, gravity: gravity);
  }
}
