import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';

class SignUpPage_5 extends StatefulWidget {
  static const routeName = '/SignUpPage_5';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage_5>
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

  String imageBG =
  Constants.images[(new Random()).nextInt(Constants.images.length)];
  String imageHeader =
  Constants.images[(new Random()).nextInt(Constants.images.length)];

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: <Widget>[
            Image(
              color: Colors.grey.withOpacity(0.5),
              image: NetworkImage(
                imageBG,
              ),
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              alignment: FractionalOffset(_animation.value, 0),
            ),
            SafeArea(
              child: Wrap(
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
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign Up',
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
                          color: Colors.amber[800],
                          fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                          labelText: 'USER NAME',
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
                          color: Colors.amber[800],
                          fontWeight: FontWeight.w700),
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
                          color: Colors.amber[800],
                          fontWeight: FontWeight.w700),
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
                  SizedBox(height: 16),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.amber[800],
                          fontWeight: FontWeight.w700),
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'CONFIRM PASSWORD',
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
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0,right: 20,top: 20),
                    child: SizedBox(
                      width: 300,
                      child: CustomButton(
                          text: 'Sign Up', highlight: true, onPressed: () {}),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
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
