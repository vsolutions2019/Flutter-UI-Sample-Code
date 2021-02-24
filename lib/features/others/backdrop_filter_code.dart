import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterWidget extends StatefulWidget {
  static const routeName = '/BackdropFilterWidget';
  @override
  _BackdropFilterWidgetState createState() => _BackdropFilterWidgetState();
}

class _BackdropFilterWidgetState extends State<BackdropFilterWidget> {
  var _blurValue = 0.0;

  @override
  void initState() {
    //Hide banner ad if it isn't already hidden
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(24),
                height: 200,
                width: 200,
                child: FlutterLogo(
                  colors: Colors.lightBlue,
                  textColor: Colors.white,
                ),
              ),

              /// This is to make sure the filter covers the widget beneath it
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: _blurValue,
                    sigmaY: _blurValue,
                  ),

                  /// Child is not affected by the filter, only the widgets
                  /// beneath it will be affected by the filter.
                  /// So we use an empty container to demonstrate the changes
                  /// on the FlutterLogo widget
                  child: Container(
                    color: Colors.black.withOpacity(0.0),
                  ),
                ),
              ),
            ],
          ),
          Slider(
            value: _blurValue,
            activeColor: Colors.lightBlue,
            inactiveColor: Colors.lightBlue[50],
            min: 0.0,
            max: 10.0,
            divisions: 10,
            label: '${_blurValue.truncate()}',
            onChanged: (double value) {
              setState(() {
                _blurValue = value;
              });
            },
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: Text(
              'Drag the slider above to change the blur effect on the FLutter Widget',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14.0,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'assets/font_family/sf-ui-display-light.otf'),
            ),
          ),
        ],
      ),
    );
  }
}
