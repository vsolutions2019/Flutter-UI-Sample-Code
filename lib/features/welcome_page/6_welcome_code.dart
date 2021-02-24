import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';
import 'package:flutterxui/features/login/6_login_code.dart';



class Welcome6 extends StatefulWidget {
  static const routeName = '/Welcome6';
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<Welcome6>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  /// -----------------------------------------
  /// Initialize Duration and timer.
  /// -----------------------------------------
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  /// -----------------------------------------
  /// Navigate to Login screen.
  /// -----------------------------------------
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(SignInScreen.routeName);
  }

  /// -----------------------------------------
  /// Initialize Controllers of animations.
  /// -----------------------------------------
  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 2));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -----------------------------------------
      /// Build main content with stack.
      /// -----------------------------------------
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(

                  /// -------------------------------
                  /// Build header image.
                  /// -------------------------------
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: new Image(
                    image: NetworkImage(
                      Constants
                          .images[Random().nextInt(Constants.images.length)],
                    ),
                    height: 25.0,
                    fit: BoxFit.scaleDown,
                  ))
            ],
          ),

          /// -------------------------------
          /// Build mid image.
          /// -------------------------------
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                Constants.images[Random().nextInt(Constants.images.length)],
                width: animation.value * 250,
                height: animation.value * 250,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
