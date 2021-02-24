

import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconSize {

  final lager = ScreenUtil().setSp(30,allowFontScalingSelf: true);
  final subLarge=ScreenUtil().setSp(25,allowFontScalingSelf: true);
  final big = ScreenUtil().setSp(23,allowFontScalingSelf: true);
  final subBig = ScreenUtil().setSp(20,allowFontScalingSelf: true);
  final normal= ScreenUtil().setSp(18,allowFontScalingSelf: true);
  final middle = ScreenUtil().setSp(16,allowFontScalingSelf: true);
  final small = ScreenUtil().setSp(14,allowFontScalingSelf: true);
  final min = ScreenUtil().setSp(12,allowFontScalingSelf: true);
  final subMin = ScreenUtil().setSp(11,allowFontScalingSelf: true);
  final subSubMin =ScreenUtil().setSp(9,allowFontScalingSelf: true);
}

IconSize iconSize = IconSize();