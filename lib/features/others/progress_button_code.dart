import 'package:flutter/material.dart';
import 'package:flutterxui/res/utils.dart';
import 'package:progress_button/progress_button.dart';

/// this class uses this library : progress_button
/// the link to it is : https://pub.dev/packages/progress_button#-installing-tab-

class ProgressButtonPage extends StatefulWidget {

  static const routeName = '/ProgressButtonPage';
  @override
  _ProgressButtonPageState createState() => _ProgressButtonPageState();
}

class _ProgressButtonPageState extends State<ProgressButtonPage> {
  ButtonState progressButtonState = ButtonState.normal;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Builder(
        builder: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(
                  (ButtonState.normal == progressButtonState ? 18.0 : 0.0)),
              child: ProgressButton(
                child: Text("Login"),
                onPressed: () => clickButton(context),
                buttonState: progressButtonState,
                backgroundColor: utils.getThem().progress7,
                progressColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ));
  }



  /// -----------------------------------------
  /// click Button helper method
  /// -----------------------------------------
  void clickButton(context) {
    Scaffold.of(context).showSnackBar(
      new SnackBar(
        content: Text('Progress Button widget'),
        duration: new Duration(
          milliseconds: 800,
        ),
      ),
    );
    setState(() {
      progressButtonState = ButtonState.inProgress;
    });
    Future.delayed(
      new Duration(
        milliseconds: 2000,
      ),
          () {
        setState(() {
          progressButtonState = ButtonState.normal;
        });
      },
    );
  }
}
