import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterxui/providers/app_provider.dart';
import 'package:flutterxui/res/color/color_dark.dart';
import 'package:flutterxui/res/color/color_light.dart';
import 'package:flutterxui/res/utils.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String r =
  prefs.getString("theme") == null ? "light" : prefs.getString("theme");

  if (r == 'light')
    utils.setThem(lightColor);
  else
    utils.setThem(darkColor);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: MyApp(),
    ),
  );
}
