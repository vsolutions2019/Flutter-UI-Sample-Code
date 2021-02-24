import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterxui/consts.dart';
import 'package:flutterxui/res/color/color_dark.dart';
import 'package:flutterxui/res/color/color_light.dart';
import 'package:flutterxui/res/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';



class AppProvider extends ChangeNotifier{
  AppProvider(){
    checkTheme();
  }


  ThemeData theme = Constants.darkTheme;
  Key key = UniqueKey();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();



  void setTheme(value, c) {
    theme = value;
    SharedPreferences.getInstance().then((prefs){
      prefs.setString("theme", c).then((val){
        SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: c == "dark" ? darkColor.primary : lightColor.primary,
          statusBarIconBrightness: c == "dark" ? Brightness.light:Brightness.dark,
        ));
      });
    });
    notifyListeners();
  }

  ThemeData getTheme(value) {
    return theme;
  }

  Future<ThemeData> checkTheme() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    ThemeData t;
    String r = prefs.getString("theme") == null ? "dark" : prefs.getString(
        "theme");

    if(r == "light"){
      t = Constants.lightTheme;
      utils.setThem(lightColor);
      setTheme(Constants.lightTheme, "light");
    }else{
      t = Constants.darkTheme;
      utils.setThem(darkColor);
      setTheme(Constants.darkTheme, "dark");
    }

    return t;
  }
}