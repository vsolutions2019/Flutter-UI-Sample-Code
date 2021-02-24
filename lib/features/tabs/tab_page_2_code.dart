import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';

class SimpleTabWithIcon extends StatefulWidget {
  static const routeName = '/SimpleTabWithIcon';
  @override
  _SimpleTabWithIconState createState() => _SimpleTabWithIconState();
}

class _SimpleTabWithIconState extends State<SimpleTabWithIcon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Text With Icon Tab",
              style: TextStyle(color: Colors.black),
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.home, color: Colors.black),
                      Text('Home', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.favorite_border, color: Colors.black),
                      Text('Favorite', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.settings, color: Colors.black),
                      Text('Settings', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.pinkAccent.withOpacity(0.4), BlendMode.darken),
                      image: NetworkImage(
                        Constants
                            .images[Random().nextInt(Constants.images.length)],
                      ),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.yellow.withOpacity(0.4), BlendMode.darken),
                      image:  NetworkImage(
                        Constants.images[
                        Random().nextInt(Constants.images.length)],
                      ),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Text(
                    "Favorite",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.orangeAccent.withOpacity(0.4),
                          BlendMode.darken),
                      image:  NetworkImage(
                        Constants.images[
                        Random().nextInt(Constants.images.length)],
                      ),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
