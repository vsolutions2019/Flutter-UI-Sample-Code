import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterxui/consts.dart';

class CustomGridPage_ extends StatefulWidget {
  static const routeName = '/CustomGridPage_';

  @override
  _CustomGridPage_State createState() => _CustomGridPage_State();
}

class _CustomGridPage_State extends State<CustomGridPage_> {
  @override
  Widget build(BuildContext context) {
    /// ------------------------------------
    /// Build Main content with SafeArea widget
    /// ------------------------------------
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.8), BlendMode.darken),

              /// ------------------------------------
              /// DecorationImage background
              /// ------------------------------------
              image: new AssetImage('assets/images/wood_bk.jpg'),
              fit: BoxFit.cover,
            ),
          ),

          /// ------------------------------------
          /// StaggeredGridView widget
          /// ------------------------------------
          child: new StaggeredGridView.count(
            physics: BouncingScrollPhysics(),
            crossAxisCount: 4,
            staggeredTiles: _staggeredTiles,
            children: _tiles,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
        ),
      ),
    );
  }
}

/// ------------------------------------
/// _ImageTile widget for expressing image content grid
/// ------------------------------------
class _ImageTile extends StatelessWidget {
  const _ImageTile(this.gridImage);

  final gridImage;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: const Color(0x00FFFFFF),
      elevation: 6.0,
      child: new GestureDetector(
        onTap: () {
          Scaffold.of(context).showSnackBar(new SnackBar(
            content: Text('pretty women'),
            duration: Duration(milliseconds: 450),
          ));
        },
        child: new Container(
            decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new NetworkImage(gridImage),
            fit: BoxFit.cover,
          ),
          borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
        )),
      ),
    );
  }
}

/// ------------------------------------
/// List of StaggeredTile items for expressing in grid view
/// ------------------------------------
List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(3, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(4, 1),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(1, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(3, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(4, 1),
];

List<Widget> _tiles = List.generate(50, (index) {
  return _ImageTile(Constants.images[Random().nextInt(20)]);
});
