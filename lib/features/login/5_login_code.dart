import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';
import 'package:flutterxui/features/signup/5_signup_code.dart';

class LoginPage5 extends StatefulWidget {
  static const routeName = '/LoginPage5';
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage5>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  AnimationController _signUpAnimationController;
  Animation<double> _signUpAnimation;

  AnimationController _signInAnimationController;
  Animation<double> _signInAnimation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 20));

    _signUpAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));

    _signInAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));

    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.linear)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((animationStatus) {
            if (animationStatus == AnimationStatus.completed) {
              _animationController.reset();
              _animationController.forward();
            }
          });

    Future.delayed(Duration.zero, () {
      _signUpAnimation =
          Tween(begin: MediaQuery.of(context).size.height, end: 450.0).animate(
              _signUpAnimationController
                  .drive(CurveTween(curve: Curves.easeOut)))
            ..addListener(() {
              setState(() {});
            })
            ..addStatusListener((animationStatus) {
              if (animationStatus == AnimationStatus.completed) {
                _signInAnimationController.forward();
              }
            });

      _signInAnimation = Tween(begin: -32.0, end: 16.0).animate(
          _signInAnimationController.drive(CurveTween(curve: Curves.easeOut)))
        ..addListener(() {
          setState(() {});
        });
    });

    _animationController.forward();

    _signUpAnimationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _signUpAnimationController.dispose();
    _signInAnimationController.dispose();
    super.dispose();
  }

  String imageBG =
  Constants.images[(new Random()).nextInt(Constants.images.length)];
  String imageHeader =
  Constants.images[(new Random()).nextInt(Constants.images.length)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: FractionalOffset(_animation.value, 0),
                image: NetworkImage(
                  imageBG,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image(
                              image: NetworkImage(
                                imageHeader,
                              ),
                              fit: BoxFit.cover,
                              height: 48,
                              width: 48,
                            ),
                          ),
                          onTap: () {} //_handleOnTabBackButton,
                          ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 48),
                SizedBox(height: 16),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.amber[800], fontWeight: FontWeight.w700),
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2,
                          color: Colors.orangeAccent[700],
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orangeAccent[700]),
                        )),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.amber[800], fontWeight: FontWeight.w700),
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2,
                          color: Colors.orangeAccent[700],
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orangeAccent[700]),
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Dont have account?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 2),
                    CupertinoButton(
                      onPressed: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => SignUpPage_5(),
                          ),
                        )
                      },
                      padding: EdgeInsets.all(0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: _signUpAnimation?.value ?? double.maxFinite,
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 300,
                  child: CustomButton(
                      text: 'Sign In', highlight: true, onPressed: () {}),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  CustomButton(
      {Key key, this.text = "", this.highlight = false, this.onPressed})
      : super(key: key);
  final String text;
  final bool highlight;
  final VoidCallback onPressed;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _active = false;

  void _handleOnTapDown(tapDownDetails) {
    setState(() {
      _active = true;
    });
  }

  void _handleOnTapUp(tapUpDetails) {
    if (widget.onPressed != null) widget.onPressed();
    setState(() {
      _active = false;
    });
  }

  Color _getColor() {
    if (_active) {
      if (widget.highlight) {
        return Color.fromRGBO(248, 248, 153, 1);
      } else {
        return Color.fromRGBO(0, 0, 0, 0.25);
      }
    } else {
      if (widget.highlight) {
        return Colors.white;
      } else {
        return Color.fromRGBO(0, 0, 0, 0.5);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleOnTapDown,
      onTapUp: _handleOnTapUp,
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: _getColor(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 18,
                color: widget.highlight
                    ? Color.fromRGBO(198, 83, 141, 1)
                    : _active
                        ? Color.fromRGBO(255, 255, 255, 0.5)
                        : Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
