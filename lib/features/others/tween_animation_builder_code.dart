import 'package:flutter/material.dart';


class TweenAnimationBuilderWidget extends StatefulWidget {
  static const routeName = '/TweenAnimationBuilderWidget';
   @override
  _TweenAnimationBuilderWidgetState createState() =>
      _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState
    extends State<TweenAnimationBuilderWidget> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      body: Center(
        child: TweenAnimationBuilder<Color>(
          duration: const Duration(seconds: 5),

          ///Values for the Animation
          ///Type of tween (here: Color) should match the second parameter
          ///of the builder and the Class type parameter(if specified)
          tween: ColorTween(begin: Colors.yellow, end: Colors.purple),

          /// Added child here as a performance optimization. Just so that
          /// flutter does not build the entire widget tree during the animation
          child: FlutterLogo(
            size: 200,
            colors: Colors.yellow,
          ),
          builder: (BuildContext _, Color value, Widget child) {
            return ColorFiltered(
              child: child,
              colorFilter: ColorFilter.mode(value, BlendMode.modulate),
            );
          },
          onEnd: () => _scaffoldKey.currentState.showSnackBar(
            SnackBar(
              content: Text("Done with the Animation"),
              duration: Duration(milliseconds: 800),
            ),
          ),
        ),
      ),
    );
  }
}
