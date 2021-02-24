import 'package:flutter/material.dart';

/// ---------------------------
///  Simple List widget goes here.
/// ---------------------------

class SimpleList extends StatefulWidget {
  static const routeName = '/SimpleList';
   @override
  _SimpleListState createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
  @override
  Widget build(BuildContext context) {
    final title = 'Simple List items';
    return new Scaffold(
      appBar: AppBar(
         title: Text(title),
      ),

      /// ---------------------------
      ///  Create main content with simple list view widget .
      /// ---------------------------

      body: ListView(
        children: <Widget>[

          /// ---------------------------
          ///  Create List item (ListTile) widget which build in widget in flutter material.
          /// ---------------------------

          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),

          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.desktop_mac),
            title: Text('DeskTop MAC'),
          ),
          ListTile(
            leading: Icon(Icons.device_hub),
            title: Text('Device Hub'),
          ),
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text('Fast Food'),
          ),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text('Flag'),
          ),
          ListTile(
            leading: Icon(Icons.folder),
            title: Text('Folder'),
          ),
          ListTile(
            leading: Icon(Icons.games),
            title: Text('Games'),
          ),
          ListTile(
            leading: Icon(Icons.keyboard),
            title: Text('Keyboard'),
          ),
          ListTile(
              leading: Icon(Icons.group),
              title: Text('Group')
          ),
          ListTile(
            leading: Icon(Icons.headset),
            title: Text('Geadset'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.insert_chart),
            title: Text('Chart'),
          ),

        ],
      ),
    );
  }
}