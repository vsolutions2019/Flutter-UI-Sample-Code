import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/components/loader/gf_loader.dart';
import 'package:getflutter/getflutter.dart';

/// ---------------------------
///  Custom Progress widget goes here.
///  this class uses Getflutter library .
///  The link to it : https://docs.getflutter.dev/gf-button
/// ---------------------------

class CustomProgress extends StatefulWidget {
  static const routeName = '/CustomProgress';
  @override
  _CustomProgressState createState() => _CustomProgressState();
}

class _CustomProgressState extends State<CustomProgress> {

  Color _color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(

        /// ---------------------------
        ///  Building scrollable content .
        /// ---------------------------

        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 32.0),

                //====================
                //   Iconed Loader
                //====================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.custom,
                      loaderIconOne: Icon(
                        Icons.insert_emoticon,
                        color: _color,
                      ),
                      loaderIconTwo: Icon(
                        Icons.insert_emoticon,
                        color: _color,
                      ),
                      loaderIconThree: Icon(
                        Icons.insert_emoticon,
                        color: _color,
                      ),
                    ),
                    GFLoader(
                      type: GFLoaderType.custom,
                      loaderIconOne: Icon(
                        Icons.insert_emoticon,
                        color: _color,
                        size: 56.0,
                      ),
                      loaderIconTwo: Icon(
                        Icons.insert_emoticon,
                        color: _color,
                        size: 56.0,
                      ),
                      loaderIconThree: Icon(
                        Icons.insert_emoticon,
                        color: _color,
                        size: 56.0,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24.0),

                Divider(
                  color: _color,
                ),
                const SizedBox(height: 24.0),

                //====================
                //   Custom Shaped squared Loader
                //====================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.square,
                      loaderColorOne: _color,
                      loaderColorTwo: _color,
                      loaderColorThree: _color,
                    ),
                    SizedBox(
                      width: 32.0,
                    ),
                    GFLoader(
                      size: 92.0,
                      type: GFLoaderType.square,
                      loaderColorOne: _color,
                      loaderColorTwo: _color,
                      loaderColorThree: _color,
                    ),
                  ],
                ),

                const SizedBox(height: 24.0),
                Divider(
                  color: _color,
                ),
                const SizedBox(height: 24.0),

                //====================
                //   Custom Shaped Circled Loader
                //====================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.circle,
                      loaderColorOne: _color,
                      loaderColorTwo: _color,
                      loaderColorThree: _color,
                    ),
                    SizedBox(
                      width: 32.0,
                    ),
                    GFLoader(
                      size: 92.0,
                      type: GFLoaderType.circle,
                      loaderColorOne: _color,
                      loaderColorTwo: _color,
                      loaderColorThree: _color,
                    ),
                  ],
                ),

                const SizedBox(height: 24.0),

                Divider(
                  color: _color,
                ),
                const SizedBox(height: 24.0),

                //====================
                //   Normal Loader
                //====================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(),
                    SizedBox(
                      width: 32.0,
                    ),
                    GFLoader(
                      size: 92.0,
                    ),
                  ],
                ),

                const SizedBox(height: 24.0),
                Divider(
                  color: _color,
                ),
                const SizedBox(height: 24.0),

                //====================
                //   Custom Word Loader
                //====================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.custom,
                      loaderIconOne: Text(
                        'Please',
                        style: TextStyle(color: _color),
                      ),
                      loaderIconTwo: Text(
                        'Wait',
                        style: TextStyle(color: _color),
                      ),
                      loaderIconThree: Text(
                        'a moment',
                        style: TextStyle(color: _color),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    GFLoader(
                      type: GFLoaderType.custom,
                      loaderIconOne: Text(
                        'Please',
                        style: TextStyle(color: _color, fontSize: 18),
                      ),
                      loaderIconTwo: Text(
                        'Wait',
                        style: TextStyle(color: _color, fontSize: 18),
                      ),
                      loaderIconThree: Text(
                        'a moment',
                        style: TextStyle(color: _color, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),

                Divider(
                  color: _color,
                ),
                const SizedBox(height: 24.0),

                //====================
                //   Custom ios Loader
                //====================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.ios,
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    GFLoader(
                      size: 62,
                      type: GFLoaderType.ios,
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    GFLoader(
                      size: 92,
                      type: GFLoaderType.ios,
                    ),
                  ],
                ),

                const SizedBox(height: 24.0),
                Divider(
                  color: _color,
                ),
                const SizedBox(height: 24.0),

                //====================
                //   Custom  Loader with gif
                //====================

                /// 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 62.0,
                        width: 62.0,
                        image: AssetImage('assets/images/Infinity_progress.gif'),
                      ),
                    ),
                    SizedBox(
                      width: 32.0,
                    ),
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 122.0,
                        width: 122.0,
                        image: AssetImage('assets/images/Infinity_progress.gif'),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24.0),

                /// 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 62.0,
                        width: 62.0,
                        image: AssetImage('assets/images/eclipse_loading.gif'),
                      ),
                    ),
                    SizedBox(
                      width: 32.0,
                    ),
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 122.0,
                        width: 122.0,
                        image: AssetImage('assets/images/eclipse_loading.gif'),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24.0),

                ///3
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 62.0,
                        width: 62.0,
                        image: AssetImage('assets/images/pulse_loading.gif'),
                      ),
                    ),
                    SizedBox(
                      width: 32.0,
                    ),
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 122.0,
                        width: 122.0,
                        image: AssetImage('assets/images/pulse_loading.gif'),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24.0),

                /// 4
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 62.0,
                        width: 62.0,
                        image: AssetImage('assets/images/ripple_loading.gif'),
                      ),
                    ),
                    SizedBox(
                      width: 32.0,
                    ),
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 122.0,
                        width: 122.0,
                        image: AssetImage('assets/images/ripple_loading.gif'),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24.0),
                /// 5
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 62.0,
                        width: 62.0,
                        image: AssetImage('assets/images/dual_ring_loading.gif'),
                      ),
                    ),
                    SizedBox(
                      width: 32.0,
                    ),
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 122.0,
                        width: 122.0,
                        image: AssetImage('assets/images/dual_ring_loading.gif'),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24.0),
                /// 6
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 62.0,
                        width: 62.0,
                        image: AssetImage('assets/images/cube_loading.gif'),
                      ),
                    ),
                    SizedBox(
                      width: 32.0,
                    ),
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 122.0,
                        width: 122.0,
                        image: AssetImage('assets/images/cube_loading.gif'),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24.0),
                /// 7
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 62.0,
                        width: 62.0,
                        image: AssetImage('assets/images/bean_eater_loading.gif'),
                      ),
                    ),
                    SizedBox(
                      width: 32.0,
                    ),
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 122.0,
                        width: 122.0,
                        image: AssetImage('assets/images/bean_eater_loading.gif'),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24.0), /// 8
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 62.0,
                        width: 62.0,
                        image: AssetImage('assets/images/ball_loading.gif'),
                      ),
                    ),
                    SizedBox(
                      width: 32.0,
                    ),
                    GFLoader(
                      type: GFLoaderType.custom,
                      child: Image(
                        height: 122.0,
                        width: 122.0,
                        image: AssetImage('assets/images/ball_loading.gif'),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24.0),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
