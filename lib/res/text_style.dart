import 'package:flutter/cupertino.dart';
import 'package:flutterxui/res/color/color_dark.dart';
import 'package:flutterxui/res/color/color_light.dart';
import 'package:flutterxui/res/text_size.dart';
import 'package:flutterxui/res/utils.dart';


class GlobalTextStyle {

  TextStyle textBasic = TextStyle(
      fontFamily: 'Bahij Janna');

  TextStyle largeTextStyle = TextStyle(
      fontSize: textSize.lager,
      fontWeight: FontWeight.bold,
      fontFamily: 'Bahij Janna');


  TextStyle bigTextStyle = TextStyle(
      fontSize: textSize.big,
      fontWeight: FontWeight.bold,
      fontFamily: 'Bahij Janna');

  bigTextAppBar(bool isLight) => TextStyle(
      color: isLight ? lightColor.titleAppBar : darkColor.titleAppBar,
      fontSize: textSize.subBig,
      fontWeight: FontWeight.w500,
      fontFamily: 'Bahij Janna');

  //========================subBig======================================

  //========================normal======================================
  normalText(bool isLight) => TextStyle(
      color: isLight ? lightColor.titleAppBar : darkColor.titleAppBar,
      fontSize: textSize.normal,
      fontWeight: FontWeight.w500,
      fontFamily: 'Bahij Janna');

  normalTextTitle() => TextStyle(
      fontSize: textSize.normal,
      fontWeight: FontWeight.w500,
      fontFamily: 'Bahij Janna');
  TextStyle normalTextStyle = TextStyle(
      fontSize: textSize.normal,
      fontWeight: FontWeight.w500,
      fontFamily: 'Bahij Janna');

  //=========================middle=====================================

  //=========================small======================================
  smallText(bool isLight) => TextStyle(
      color: isLight ? lightColor.titleAppBar : darkColor.titleAppBar,
      fontSize: textSize.small,
      fontWeight: FontWeight.w500,
      fontFamily: 'Bahij Janna');

  TextStyle smallTextStyle = TextStyle(
      fontSize: textSize.small,
      fontWeight: FontWeight.w500,
      fontFamily: 'Bahij Janna');

  TextStyle smallTextBasic = TextStyle(
      fontSize: textSize.small);


  //========================min=========================================
  TextStyle minText = TextStyle(
      fontSize: textSize.min,
      fontWeight: FontWeight.w500,
      fontFamily: 'Bahij Janna');
  //========================sub-min=====================================

  TextStyle styleNavigationBarItemText = TextStyle(
      color: utils.getThem().primary,
      fontSize: textSize.subMin,
      fontFamily: 'Bahij Janna',
      height: 2);

//========================sub-sub-min==================================

}

GlobalTextStyle textStyle = GlobalTextStyle();
