import 'package:flutter/material.dart';
import 'package:flutterxui/res/utils.dart';



class ShaderMaskWidget extends StatefulWidget {
  static const routeName = '/ShaderMaskWidget';

   @override
  _ShaderMaskWidgetState createState() => _ShaderMaskWidgetState();
}

class _ShaderMaskWidgetState extends State<ShaderMaskWidget> {

  Map<int, Color> color =
  {
    50:Color.fromRGBO(255,255,255, .1),
    100:Color.fromRGBO(255,255,255, .2),
    200:Color.fromRGBO(255,255,255, .3),
    300:Color.fromRGBO(255,255,255, .4),
    400:Color.fromRGBO(255,255,255, .5),
    500:Color.fromRGBO(255,255,255, .6),
    600:Color.fromRGBO(255,255,255, .7),
    700:Color.fromRGBO(255,255,255, .8),
    800:Color.fromRGBO(255,255,255, .9),
    900:Color.fromRGBO(255,255,255, 1),
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ShaderMask(
              shaderCallback: (bounds) => RadialGradient(
                center: Alignment.topLeft,
                radius: 1.0,
                colors: [utils.getThem().progress3, utils.getThem().progress6],
                tileMode: TileMode.mirror,
              ).createShader(bounds),
              ///Specified white here to get the ShaderMask effect
              child: const Text(
                'Flutter is hot!!',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: ShaderMask(
                shaderCallback: (bounds) => RadialGradient(
                  center: Alignment.topLeft,
                  radius: 1.0,
                  colors: [utils.getThem().progress3, utils.getThem().progress6],
                  tileMode: TileMode.mirror,
                ).createShader(bounds),
                ///Specified white here to get the ShaderMask effect
                child: FlutterLogo(
                  colors: MaterialColor(0xffffffff, color),
                  size: 150.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
