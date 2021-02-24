import 'package:achievement_view/achievement_view.dart';
import 'package:flutter/material.dart';

/// this class uses this library
/// this link to it : https://github.com/RafaelBarbosatec/achievement_view_flutter


class AchievementToastPage_4 extends StatefulWidget {
  static const routeName = '/AchievementToastPage_4';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AchievementToastPage_4> {
  bool isCircle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      /// ----------------------------------------------------------
      /// Build main content with Container widget
      /// ----------------------------------------------------------
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[


                  /// ----------------------------------------------------------
                  /// Positioned Show Circled Toast Raised Button
                  /// ----------------------------------------------------------
                  RaisedButton(
                    child: Text("Show Circled"),
                    onPressed: () {
                      isCircle = true;
                      show(context);
                    },
                  ),

                  /// ----------------------------------------------------------
                  /// Positioned Show Squared Toast Raised Button
                  /// ----------------------------------------------------------
                  RaisedButton(
                    child: Text("Show Squared"),
                    onPressed: () {
                      isCircle = false;
                      show(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void show(BuildContext context) {


    /// ----------------------------------------------------------
    /// AchievementView class that expresses the toast
    /// ----------------------------------------------------------
    AchievementView(context,
        alignment: Alignment.center,
        title: "Yeaaah!",
        subTitle: "Training completed  ",
        textStyleSubTitle: TextStyle(fontSize: 12.0),
        isCircle: isCircle, listener: (status) {
      print(status);
    })
      ..show();
  }
}
