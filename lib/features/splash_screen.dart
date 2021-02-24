import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutterxui/features/home/home_page.dart';
import 'package:flutterxui/res/utils.dart';


class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 360, height: 750);

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    Future.delayed(Duration(seconds: 1), () {
      _navigateTo(context);
    });
    final spinkit = SpinKitThreeBounce(
      color: utils.getThem().flutterLogoColors,
      size: ScreenUtil().setWidth(20),
//      controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            utils.getThem().linearGradientColor1,
            utils.getThem().linearGradientColor2
          ]),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              height: ScreenUtil().setHeight(24),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(300),
              height: ScreenUtil().setHeight(200),
              child: Image.asset('assets/images/logo_home.png',width:ScreenUtil().setWidth(300),height: ScreenUtil().setHeight(200),fit: BoxFit.cover,),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(24),
            ),
            spinkit
          ],
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(HomePage.routeName);
  }
}
