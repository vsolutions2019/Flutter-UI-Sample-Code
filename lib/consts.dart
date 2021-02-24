import 'package:flutter/material.dart';
import 'package:flutterxui/features/settings/1_settings_code.dart';
import 'package:flutterxui/features/settings/settings.dart';
import 'package:flutterxui/res/color/color_dark.dart';
import 'package:flutterxui/res/color/color_light.dart';
import 'package:flutterxui/res/icon_size.dart';
import 'package:flutterxui/res/text_style.dart';
import 'package:flutterxui/res/utils.dart';

class Constants {
  //App related strings
  static String appName = "FlutterX UI";


  static List<String> images = [
    'https://picsum.photos/500/600?random=1',
    'https://picsum.photos/500/600?random=2',
    'https://picsum.photos/500/600?random=3',
    'https://picsum.photos/500/600?random=4',
    'https://picsum.photos/500/600?random=5',
    'https://picsum.photos/500/600?random=6',
    'https://picsum.photos/500/600?random=7',
    'https://picsum.photos/500/600?random=8',
    'https://picsum.photos/500/600?random=9',
    'https://picsum.photos/500/600?random=10',
    'https://picsum.photos/500/600?random=11',
    'https://picsum.photos/500/600?random=12',
    'https://picsum.photos/500/600?random=13',
    'https://picsum.photos/500/600?random=14',
    'https://picsum.photos/500/600?random=15',
    'https://picsum.photos/500/600?random=16',
    'https://picsum.photos/500/600?random=17',
    'https://picsum.photos/500/600?random=18',
    'https://picsum.photos/500/600?random=19',
    'https://picsum.photos/500/600?random=20',
  ];

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Bahij Janna',

//    primaryColor: lightColor.primary,
//    accentColor:  lightColor.accent,
//    cursorColor: lightColor.accent,
    scaffoldBackgroundColor: lightColor.backgroundColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: lightColor.backgroundColor,
      brightness: Brightness.light,
    ),
  );

  static AppBar appBar(BuildContext context, String title, bool canPop) =>
      AppBar(
        automaticallyImplyLeading: canPop,
        centerTitle: true,
        elevation: 2,
        title: Text(title, style: textStyle.bigTextAppBar(utils.isLight())),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: utils.getThem().globalIcon),
            onPressed: () {
              Navigator.of(context).pushNamed(
                SettingsPage.routeName,
              );
            },
          )
        ],
      );

  static AppBar appBarSection(BuildContext context, String title, bool canPop,
          String sourceFilePath,
          {double shadow}) =>
      AppBar(
        centerTitle: true,
        elevation: shadow,
        leading: canPop
            ? GestureDetector(
                child: Icon(Icons.arrow_back,
                    color: utils.getThem().titleAppBar, size: iconSize.big),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            : Container(),

        title: Text(title, style: textStyle.bigTextAppBar(utils.isLight())),
      );
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Bahij Janna',
    brightness: Brightness.dark,

//    primaryColor: darkColor.primary,
//    accentColor: darkColor.accent,
//    cursorColor: darkColor.accent,
    scaffoldBackgroundColor: darkColor.backgroundColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: darkColor.backgroundColor,
      brightness: Brightness.dark,
    ),
  );
}
