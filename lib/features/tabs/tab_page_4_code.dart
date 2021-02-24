import 'package:flutter/material.dart';

class ScrollableTab extends StatefulWidget {
  static const routeName = '/ScrollableTab';
  @override
  _ScrollableTabState createState() => _ScrollableTabState();
}

class _ScrollableTabState extends State<ScrollableTab> {

  textStyle() {
    return new TextStyle(color: Colors.white, fontSize: 30.0);
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 7,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Smiple Tab Demo",style: TextStyle(color: Colors.black)),
          bottom: new TabBar(
            isScrollable: true,
            tabs: <Widget>[
              new Tab(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.home,color:  Colors.black),
                    Text('Home',style: TextStyle(color:  Colors.black)),
                  ],
                ),
              ),
              new Tab(
                child:Row(
                  children: <Widget>[
                    Icon(Icons.person_pin,color:  Colors.black),
                    Text('Profile',style: TextStyle(color:  Colors.black)),
                  ],
                ),
              ),
              new Tab(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.save_alt,color:  Colors.black),
                    Text('Saved',style: TextStyle(color:  Colors.black)),
                  ],
                ),
              ),
              new Tab(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.favorite_border,color:  Colors.black),
                    Text('Favorite',style: TextStyle(color:  Colors.black)),
                  ],
                ),
              ),
              new Tab(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.info_outline,color:  Colors.black),
                    Text('About',style: TextStyle(color:  Colors.black)),
                  ],
                ),
              ),
              new Tab(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.chat,color:  Colors.black),
                    Text('Chat',style: TextStyle(color:  Colors.black)),
                  ],
                ),
              ),
              new Tab(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.settings,color:  Colors.black),
                    Text('Settings',style: TextStyle(color:  Colors.black)),
                  ],
                ),
              )
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Container(
              child: new Center(
                child: new Text(
                  "Home",
                  style: TextStyle(color:  Colors.black),
                ),
              ),
            ),
            new Container(
              child: new Center(
                child: new Text(
                  "Profile",
                  style: TextStyle(color:  Colors.black),
                ),
              ),
            ),
            new Container(
              child: new Center(
                child: new Text(
                  "Saved",
                  style: TextStyle(color:  Colors.black),
                ),
              ),
            ),
            new Container(
              child: new Center(
                child: new Text(
                  "Favorite",
                  style: TextStyle(color:  Colors.black),
                ),
              ),
            ),
            new Container(
              child: new Center(
                child: new Text(
                  "About",
                  style: TextStyle(color:  Colors.black),
                ),
              ),
            ),
            new Container(
              child: new Center(
                child: new Text(
                  "Chat",
                  style: TextStyle(color:  Colors.black),
                ),
              ),
            ),
            new Container(
              child: new Center(
                child: new Text(
                  "Settings",
                  style: TextStyle(color:  Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}