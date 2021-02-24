
import 'package:flutter/material.dart';

class ColorFilteredWidget extends StatefulWidget {
  static const routeName = '/ColorFilteredWidget';
   final image = 'assets/images/fish.jpg';
  @override
  _ColorFilteredWidgetState createState() => _ColorFilteredWidgetState();
}

class _ColorFilteredWidgetState extends State<ColorFilteredWidget> {


  /// ---------------------------
  ///  BlendMode object which dart build in   .
  /// ---------------------------
  var _blendmode = BlendMode.darken;
  var _blendmode1 = BlendMode.softLight;
  var _blendmode2 = BlendMode.colorBurn;
  var _blendmode3 = BlendMode.difference;
  var _blendmode4 = BlendMode.multiply;

  @override
  void initState() {
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      /// --------------------------
      ///  Build scrollable content with SingleChildScrollView widget.
      /// ---------------------------
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(18),
              child: Center(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(Colors.blue, _blendmode),
                  child: Image.asset(widget.image ),
                ),
              ),
            ),
            divider(context),
            Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Wrap(
                children: <Widget>[

                  /// --------------------------
                  ///  First _blendmode  choice.
                  /// ---------------------------
                  _OptionItem(_blendmode1, _blendmode, _onBlendModeChanged,
                      'BlendMode.softLight'),
                  _OptionItem(_blendmode2, _blendmode, _onBlendModeChanged,
                      'BlendMode.colorBurn'),
                  _OptionItem(_blendmode3, _blendmode, _onBlendModeChanged,
                      'BlendMode.difference'),
                  _OptionItem(_blendmode4, _blendmode, _onBlendModeChanged,
                      'BlendMode.multiply'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// --------------------------
  ///  Changing BlendMode  choice according to user input.
  /// ---------------------------
  _onBlendModeChanged(BlendMode blendMode) => setState(() {
    _blendmode = blendMode;
  });
}

/// --------------------------
///  OptionItem which build for radio button and GestureDetector and label text.
/// ---------------------------
class _OptionItem<T> extends StatelessWidget {
  const _OptionItem(this.value, this.groupValue, this.onChanged, this.title);

  final String title;
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Radio<T>(
            value: value,
            groupValue: groupValue,
            activeColor: Colors.lightBlue,
            onChanged: onChanged),
        GestureDetector(
          onTap: () {
            onChanged(value);
          },
          child: Text(
            title,
            style:
            TextStyle(fontSize: 14.0, fontFamily: 'assets/font_family/sf-ui-display-light.otf'),
          ),
        ),
      ],
    );
  }
}
/// --------------------------
///  Simple divider widget .
/// ---------------------------
Container divider(BuildContext context) => Container(
  child: Divider(),
  margin: EdgeInsets.only(left: 10, right: 10, top: 14),
);
