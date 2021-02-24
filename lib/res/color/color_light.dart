
import 'package:flutter/material.dart';
import 'package:flutterxui/res/color/global_color.dart';




class ColorLight extends GlobalColor{
  //Colors for theme


  final Color _primary = Colors.white;
  final Color _accent = Color(0xff0F55A6);


  final Color _globalText  = Colors.black;
  final Color _backgroundColor = Colors.white;
  final Color _globalIcon = Colors.black;

  final Color _titleAppBar = Colors.black;

  final Color _borderSide =Colors.black12;

  @override
  Color get borderSide => _borderSide;


  final Color _fillColor =Colors.lightBlue;

  @override
  Color get fillColor => _fillColor;
  final Color _linearGradientColor1 = Colors.white;
  final Color _linearGradientColor2 = Colors.blue.withOpacity(0.9);


  final Color _flutterLogoColors = Colors.blue;


  @override
  get accent => _accent;

  @override
  get globalText => _globalText;

  @override
  get linearGradientColor1 => _linearGradientColor1;

  @override
  get linearGradientColor2 => _linearGradientColor2;

  @override
  get primary => _primary;

  @override
  get titleAppBar => _titleAppBar;

  @override
  get backgroundColor => _backgroundColor;

  @override
  get globalIcon => _globalIcon;

  @override
  get flutterLogoColors => _flutterLogoColors;

  final Color _progress1 =Color(0xFF000000);
  final Color _progress2 = Color(0xFF1565C0);
  final Color _progress3 = Color(0xFF9C27B0);
  final Color _progress4 =Color(0xFF43A047);
  final Color _progress5 = Color(0xFF512DA8);
  final Color _progress6 = Color(0xFF795548);

  @override
  Color get progress1 => _progress1;

  @override
  Color get progress2 => _progress2;

  @override
  Color get progress3 => _progress3;

  @override
  Color get progress4 => _progress4;

  @override
  Color get progress5 => _progress5;

  @override
  Color get progress6 => _progress6;

  @override
  get red => Colors.red;

  @override
  get backgroundShade50 => Colors.black54;

  @override
  get progress7 => Colors.amber;

  @override
  get backgroundHome => Colors.grey.shade200;

}

ColorLight lightColor = ColorLight();

