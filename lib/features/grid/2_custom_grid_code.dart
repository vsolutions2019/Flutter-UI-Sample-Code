import 'dart:core';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterxui/consts.dart';

class CustomGridPage1 extends StatefulWidget {
  static const routeName = '/CustomGridPage1';

  @override
  _CustomGridPageState createState() => _CustomGridPageState();
}

class _CustomGridPageState extends State<CustomGridPage1> {
  /// ------------------------------------
  /// List of images for grid items
  /// ------------------------------------
  List<_Tile> imageList = [
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 1,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 2,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 3,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 4,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 5,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 6,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 7,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 8,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 9,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 10,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 11,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 12,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 13,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 14,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 15,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 16,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 17,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 18,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 19,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 20,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 21,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 22,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 23,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 24,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 25,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 26,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 27,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 28,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 29,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 30,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 31,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 32,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 33,
    ),
    new _Tile(
      image: Constants.images[new Random().nextInt(20)],
      index: 34,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// ------------------------------------
    /// Build main content with safe area widget
    /// ------------------------------------
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: new Container(
          decoration: BoxDecoration(
            /// ------------------------------------
            /// Decoration Image background
            /// ------------------------------------
            image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
                image: new AssetImage('assets/images/wood_bk.jpg'),
                fit: BoxFit.cover),
          ),

          /// ------------------------------------
          /// Main content StaggeredGridView.count with help of StaggeredGridView library
          /// ------------------------------------
          child: new StaggeredGridView.countBuilder(
            primary: false,
            crossAxisCount: 4,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            itemCount: imageList.length,
            itemBuilder: (context, index) => imageList[index],
            staggeredTileBuilder: (index) => new StaggeredTile.fit(2),
          ),
        ),
      ),
    );
  }
}

/// ------------------------------------
/// _Tile widget for expressing image content grid
/// ------------------------------------
class _Tile extends StatelessWidget {
  _Tile({this.index, this.image});

  final int index;
  final String image;

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              Card(
                elevation: 8,
                child: Center(
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(image:NetworkImage(image), fit: BoxFit.cover),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
