import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';


class IconTab extends StatefulWidget {
  static const routeName = '/IconTab';
  @override
  _IconTabState createState() => _IconTabState();
}

class _IconTabState extends State<IconTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Icon Tab",style: TextStyle(color: Colors.black),),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child:Icon(Icons.home,color:  Colors.black),
                ),
                Tab(
                  child:Icon(Icons.favorite_border,color:  Colors.black),
                ),
                Tab(
                  child:Icon(Icons.person_pin,color:  Colors.black),
                ),
                Tab(
                  child:Icon(Icons.settings,color:  Colors.black),
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
                      image:  NetworkImage(
                        Constants.images[
                        Random().nextInt(Constants.images.length)],
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
                      image: NetworkImage(
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
                          Colors.deepPurpleAccent.withOpacity(0.4), BlendMode.darken),
                      image:  NetworkImage(
                        Constants.images[
                        Random().nextInt(Constants.images.length)],
                      ),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Text(
                    "Profile",
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