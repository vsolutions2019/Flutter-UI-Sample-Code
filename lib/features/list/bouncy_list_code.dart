
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';

/// ---------------------------
///  Bouncy List widget goes here.
/// ---------------------------

class BouncyList extends StatefulWidget {
  static const routeName = '/BouncyList';

  @override
  _BouncyListState createState() => _BouncyListState();
}

class _BouncyListState extends State<BouncyList> {
  List<_ListItem> listItems;

  /// ---------------------------
  ///  Initialize  drawer list item .
  /// ---------------------------
  @override
  void initState() {
    super.initState();
    initListItems();
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Bouncy List';

    /// ---------------------------
    ///  Build main content with list view .
    /// ---------------------------

    return new Scaffold(
      appBar: AppBar(
        elevation: 8.0,
        backgroundColor: Colors.indigo,
        title: new Text(title , ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: listItems.length,
        itemBuilder: (BuildContext ctxt, int index) => listItems[index],
      ),
    );
  }

  /// ---------------------------
  ///  Initialize drawer list item  with helper method .
  /// ---------------------------

  void initListItems() {
    listItems = [
      /////// ------------
      /////// Init List item
      //////  ------------
      new _ListItem(
          name: "Reveta",
          detail: "Pretties woman"),
      new _ListItem(
          name: "Karren",
          detail: "Pretty"),
      new _ListItem(
          name: "Sarada",
          detail: "Good"),
      new _ListItem(
          name: "Hemarra",
          detail: "Beauty"),
      new _ListItem(
          name: "Marama",
          detail: "Bad"),
      new _ListItem(
          name: "Kazan",
          detail: "Sometime"),
      new _ListItem(
          name: "Reta",
          detail: "Excellant"),
      new _ListItem(
          name: "Rive",
          detail: "Ugly"),
      new _ListItem(
          name: "Rose",
          detail: "Somehow"),
      new _ListItem(
          name: "Shahnza",
          detail: "Rode")
    ];
  }
}

/// ---------------------------
///  Model list item for drawer item .
/// ---------------------------

class _ListItem extends StatelessWidget {
  _ListItem({this.bgName, this.name, this.detail});
  String image =
  Constants.images[(new Random()).nextInt(Constants.images.length)];
  // final int index;
  final String bgName;
  final String name;
  final String detail;
  @override
  Widget build(BuildContext context) {

    /// ---------------------------
    ///  Model main item content.
    /// ---------------------------

    return Container(
      color: Colors.black26,
      height: 150.0,
      margin: const EdgeInsets.symmetric(
        vertical: 1.0,
      ),
      child: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new NetworkImage(image),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.8), BlendMode.darken),
                  fit: BoxFit.cover),
            ),

            /// ---------------------------
            ///  Building expanded content .
            /// ---------------------------

            child: new SizedBox.expand(
              child: Container(
                alignment: Alignment.center,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Text(
                      name,
                      style: new TextStyle(fontSize: 24.0, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: new Text(
                        detail,
                        style:
                        new TextStyle(fontSize: 12.0, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}