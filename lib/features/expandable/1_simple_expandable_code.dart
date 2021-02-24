import 'package:flutter/material.dart';
import 'package:getflutter/components/accordian/gf_accordian.dart';

/// this class uses this library getflutter
/// the link to it is : https://pub.dev/packages/getflutter

class SimpleExpandablePage_ extends StatelessWidget {
  static const routeName = '/SimpleExpandablePage_';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            /// ----------------------------------------------------------
            /// First expandable widget
            /// ----------------------------------------------------------
            GFAccordion(
              title: 'FlutterX UI',
              content: 'FlutterX UI is an Amazing app that offers you multiple interfaces using filters with its source code',
            ),

            /// ----------------------------------------------------------
            /// Second expandable widget with icons
            /// ----------------------------------------------------------
            GFAccordion(
                title: 'FlutterX UI',
                content: 'FlutterX UI is an Amazing app that offers you multiple interfaces using filters with its source code',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)),

            /// ----------------------------------------------------------
              /// Third expandable widget with TExt
            /// ----------------------------------------------------------
            GFAccordion(
                title: 'FlutterX UI',
                content: 'FlutterX UI is an Amazing app that offers you multiple interfaces using filters with its source code',
                collapsedIcon: Text('Show'),
                expandedIcon: Text('Hide')),
          ],
        ),
      ),
    );
  }
}
