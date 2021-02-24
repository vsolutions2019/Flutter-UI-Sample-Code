import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';



/// ---------------------------
///   Simple Drawer widget goes here.
/// ---------------------------

class SimpleDrawer extends StatelessWidget {
  static const routeName = '/SimpleDrawer';
  const SimpleDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /// ---------------------------
    ///   Building drawer with build in drawer class .
    /// ---------------------------

    final drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(color: Colors.red),
      accountName: Text('Example User Name'),
      accountEmail: Text('example@email.com'),
      currentAccountPicture: CircleAvatar(
        backgroundImage:  NetworkImage(
          Constants.images[
          Random().nextInt(Constants.images.length)],
        ),
        backgroundColor: Colors.white,
      ),
      /// ---------------------------
      ///   Building drawer header .
      /// ---------------------------
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          child: Text('A'),
          backgroundColor: Colors.amber,
        ),
        CircleAvatar(
          child: Text('#'),
          backgroundColor: Colors.brown,
        )
      ],
    );

    /// ---------------------------
    ///   Building drawer items list  .
    /// ---------------------------

    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('To page 1'),
          onTap: () => Navigator.of(context).push(_NewPage(1)),
        ),
        ListTile(
          title: Text('To page 2'),
          onTap: () => Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          title: Text('other drawer item'),
          onTap: () {},
        ),
      ],
    );

    /// ---------------------------
    ///   Building Main content  .
    /// ---------------------------

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Drawer example'),
        ),
        body: Center(
          child: Text('Swip or click upper-left icon to see drawer.'),
        ),
        drawer: Drawer(
          child: drawerItems,
        ));
  }
}
/// ---------------------------
///   Model for list item  drawer .
/// ---------------------------
// <Null> means this route returns nothing.
class _NewPage extends MaterialPageRoute<Null> {
  _NewPage(int id)
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (id == 1)
            ? Colors.grey
            : Colors.teal,
        title: Text('Page $id'),
        elevation: 12.0,
      ),
      body: Center(
        child: Text('Page $id'),
      ),
    );
  });
}
