import 'package:flutter/material.dart';
import 'package:flutter_expandable_menu/floating_menu_callback.dart';
import 'package:flutter_expandable_menu/floating_menu_item.dart';
import 'package:flutter_expandable_menu/flutter_expandable_menu.dart';

class RoundMenuExpandablePage_4 extends StatefulWidget {
  static const routeName = '/RoundMenuExpandablePage_4';
   @override
  _RoundMenuExpandablePage_4State createState() =>
      _RoundMenuExpandablePage_4State();
}

class _RoundMenuExpandablePage_4State extends State<RoundMenuExpandablePage_4>
    with TickerProviderStateMixin
    implements FloatingMenuCallback {
  String centerText = "Home";
  /// ----------------------------------------------------------
  /// List of  FloatingMenuItem
  /// ----------------------------------------------------------
  final List<FloatingMenuItem> floatMenuList = [
    FloatingMenuItem(
        id: 1, icon: Icons.favorite, backgroundColor: Colors.deepOrangeAccent),
    FloatingMenuItem(id: 2, icon: Icons.map, backgroundColor: Colors.brown),
    FloatingMenuItem(id: 3, icon: Icons.email, backgroundColor: Colors.indigo),
    FloatingMenuItem(id: 4, icon: Icons.event, backgroundColor: Colors.pink),
    FloatingMenuItem(id: 5, icon: Icons.print, backgroundColor: Colors.green),
    FloatingMenuItem(
        id: 6, icon: Icons.home, backgroundColor: Colors.deepPurple),
    FloatingMenuItem(
        id: 7, icon: Icons.location_on, backgroundColor: Colors.blueAccent),
  ];

  @override
  Widget build(BuildContext context) {

    /// ----------------------------------------------------------
    /// Build main content with Scaffold widget
    /// ----------------------------------------------------------
    return Scaffold(
      appBar: AppBar(),

      body: Stack(
        children: <Widget>[
          Center(
            child: Text(
              centerText,
              style: TextStyle(color: Colors.black),
            ),
          ),

          /// ----------------------------------------------------------
          /// Build main content with FlutterExpandableMenu widget
          /// and adding some configs
          /// ----------------------------------------------------------
          FlutterExpandableMenu(
            menuList: floatMenuList,
            callback: this,
            backgroundColor: Colors.transparent,
            menuBackgroundColor: Colors.black,
            menuIcon: AnimatedIcons.menu_close,
            menuAlignment: Alignment.center,
            outerTransitionDuration: Duration(milliseconds: 300),
            menusTransitionDuration: Duration(milliseconds: 500),
            menusTransitionDelay: Duration(milliseconds: 200),
          ),
        ],
      ),
    );
  }

  /// ----------------------------------------------------------
  /// onMenuClick callback method for click event
  /// ----------------------------------------------------------
  @override
  void onMenuClick(FloatingMenuItem floatingMenuItem) {
    if (floatingMenuItem != null) {
      print("onMenuClicked : " + floatingMenuItem.id.toString());
      switch (floatingMenuItem.id) {
        case 1:
          {
            centerText = "Favorite";
          }
          break;
        case 2:
          {
            centerText = "Map";
          }
          break;
        case 3:
          {
            centerText = "Email";
          }
          break;
        case 4:
          {
            centerText = "Event";
          }
          break;
        case 5:
          {
            centerText = "Print";
          }
          break;
        case 6:
          {
            centerText = "Home";
          }
          break;
        case 7:
          {
            centerText = "Location";
          }
          break;
      }

      setState(() {});
    }
  }
}