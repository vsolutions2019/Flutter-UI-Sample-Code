import 'package:flutter/material.dart';
import 'package:flutterxui/res/color/global_color.dart';


class ColorDark extends GlobalColor {
  //Colors for theme

  final Color _primary = Colors.black;
  final Color _accent = Color(0xff0F55A6);

  final Color _globalText = Colors.white;
  final Color _backgroundColor = Colors.black;
  final Color _globalIcon = Colors.white;

  final Color _titleAppBar = Colors.white;

  final Color _linearGradientColor1 = Colors.black;
  final Color _linearGradientColor2 = Colors.red;

  final Color _flutterLogoColors = Colors.red;

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

  final Color _borderSide = Colors.white30;

  @override
  Color get borderSide => _borderSide;

  final Color _fillColor = Colors.redAccent;

  @override
  Color get fillColor => _fillColor;

  final Color _progress1 = Color(0xFFFFFFFF);
  final Color _progress2 = Color(0xFF1565C0);
  final Color _progress3 = Color(0xFF80CBC4);
  final Color _progress4 = Colors.red;
  final Color _progress5 = Color(0xFF009688);
  final Color _progress6 = Colors.yellow;

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
  get progress7 => _progress5;

  get backgroundShade50 => Colors.white30;

  @override
  get backgroundHome => Colors.grey.shade900;
}

ColorDark darkColor = ColorDark();
