import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  static const routeName = '/AnimatedCrossFadeWidget';
   @override
  _AnimatedCrossFadeWidgetState createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  var crossFadeView = CrossFadeState.showFirst;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            /// AnimatedCrossFade which build in flutter widget
            AnimatedCrossFade(
              crossFadeState: crossFadeView,
              duration: Duration(milliseconds: 1000),

              /// First child of AnimatedCrossFade

              firstChild: Container(
                width: 300,
                height: 300,
                color: Colors.lightBlue,
                child: Center(
                  child: Text(
                    "Flutter UI Widget",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              /// second   child of AnimatedCrossFade

              secondChild: Container(
                width: 300,
                height: 300,
                color: Colors.lightBlue,
                child: Center(
                  child: Text(
                    "Is the Greatest :)",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: RaisedButton(
                color: Theme.of(context).backgroundColor,
                child: Text(
                  "Cross Fade",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                onPressed: () => setState(() {
                  crossFadeView = crossFadeView == CrossFadeState.showFirst
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst;
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
