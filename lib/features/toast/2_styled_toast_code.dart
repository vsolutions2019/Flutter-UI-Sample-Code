import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

/// This class uses this library flutter_styled_toast
/// The link to it : https://pub.dev/packages/flutter_styled_toast

class StyledToastPage extends StatefulWidget {
  static const routeName = '/StyledToastPage';
  @override
  State<StatefulWidget> createState() {
    return _StyledToastState();
  }
}

class _StyledToastState extends State<StyledToastPage> {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Styled Toast Example';
    return Scaffold(
      appBar: AppBar(),
      body: StyledToast(
        //wrap app with StyledToast, define toast style.
        textStyle: TextStyle(fontSize: 16.0, color: Colors.white),
        backgroundColor: Color(0x99000000),
        borderRadius: BorderRadius.circular(5.0),
        textPadding: EdgeInsets.symmetric(horizontal: 17.0, vertical: 10.0),
        toastAnimation: StyledToastAnimation.size,
        reverseAnimation: StyledToastAnimation.slideToTopFade,
        startOffset: Offset(0.0, 3.0),
        reverseEndOffset: Offset(0.0, 3.0),
        duration: Duration(seconds: 4),
        animDuration: Duration(seconds: 1),
        alignment: Alignment.center,
        toastPositions: StyledToastPosition.center,
        curve: Curves.fastOutSlowIn,
        reverseCurve: Curves.fastLinearToSlowEaseIn,
        dismissOtherOnShow: true,
        movingOnWindowChange: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: appTitle,
          home: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return MyHomePage(
                title: appTitle,
              );
            },
          ),
        ),
      ),
    );
  }
}

/// The StatefulWidget's job is to take in some data and create a State class.
/// In this case, the Widget takes a title, and creates a _MyHomePageState.
class MyHomePage extends StatefulWidget {
  final String title;

  final VoidCallback onSetting;

  MyHomePage({Key key, this.title, this.onSetting}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

/// The State class is responsible for two things: holding some data you can
/// update and building the UI using that data.
class _MyHomePageState extends State<MyHomePage> {
  // Whether the green box should be visible or invisible

  String dismissRemind = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              padding: EdgeInsets.only(left: 15.0),
              height: 35.0,
              alignment: Alignment.centerLeft,
              child: Text('Normal Toast'),
              color: const Color(0xFFDDDDDD),
            ),
            ListTile(
              title: Text('Normal toast'),
              onTap: () {
                showToast(
                  'This is normal toast',
                  context: context,
                  axis: Axis.vertical,
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast(custom borderRadius textStyle etc)",
              ),
              onTap: () {
                showToast('This is normal toast',
                    context: context,
                    textStyle: TextStyle(fontSize: 20.0, color: Colors.red),
                    backgroundColor: Colors.yellow,
                    textPadding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                    borderRadius: BorderRadius.vertical(
                        top: Radius.elliptical(10.0, 20.0),
                        bottom: Radius.elliptical(10.0, 20.0)),
                    textAlign: TextAlign.justify,
                    textDirection: TextDirection.rtl);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast(position)",
              ),
              onTap: () {
                showToast('This is normal toast with position',
                    context: context, position: StyledToastPosition.center);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast(custom position)",
              ),
              onTap: () {
                showToast('This is toast',
                    context: context,
                    toastHorizontalMargin: 10.0,
                    position: StyledToastPosition(
                        align: Alignment.topLeft, offset: 20.0));
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast(fade anim)",
              ),
              onTap: () {
                showToast('This is normal toast with fade animation',
                    context: context,
                    animation: StyledToastAnimation.fade,
                    curve: Curves.linear,
                    reverseCurve: Curves.linear);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast(slideFromTop anim)",
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.slideFromTop,
                    reverseAnimation: StyledToastAnimation.slideToTop,
                    position: StyledToastPosition.top,
                    startOffset: Offset(0.0, -3.0),
                    reverseEndOffset: Offset(0.0, -3.0),
                    duration: Duration(seconds: 4),
                    //Animation duration   animDuration * 2 <= duration
                    animDuration: Duration(seconds: 1),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.fastOutSlowIn);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast(slideFromTopFade anim)",
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.slideFromTopFade,
                    reverseAnimation: StyledToastAnimation.slideToTopFade,
                    position: StyledToastPosition.top,
                    startOffset: Offset(0.0, -3.0),
                    reverseEndOffset: Offset(0.0, -3.0),
                    duration: Duration(seconds: 4),
                    //Animation duration   animDuration * 2 <= duration
                    animDuration: Duration(seconds: 1),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.fastOutSlowIn);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast(slideFromBottom anim)",
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.slideFromBottom,
                    reverseAnimation: StyledToastAnimation.slideToBottom,
                    startOffset: Offset(0.0, 3.0),
                    reverseEndOffset: Offset(0.0, 3.0),
                    position: StyledToastPosition.bottom,
                    duration: Duration(seconds: 4),
                    //Animation duration   animDuration * 2 <= duration
                    animDuration: Duration(seconds: 1),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.fastOutSlowIn);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast(slideFromBottomFade anim)",
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.slideFromBottomFade,
                    reverseAnimation: StyledToastAnimation.slideToBottomFade,
                    startOffset: Offset(0.0, 3.0),
                    reverseEndOffset: Offset(0.0, 3.0),
                    position: StyledToastPosition.bottom,
                    duration: Duration(seconds: 4),
                    //Animation duration   animDuration * 2 <= duration
                    animDuration: Duration(seconds: 1),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.fastOutSlowIn);
              },
            ),

            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "normal toast(size anim)",
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.size,
                    reverseAnimation: StyledToastAnimation.size,
                    alignment: Alignment.center,
                    axis: Axis.horizontal,
                    position: StyledToastPosition.center,
                    animDuration: Duration(milliseconds: 400),
                    duration: Duration(seconds: 2),
                    curve: Curves.linear,
                    reverseCurve: Curves.linear);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "normal toast(sizefade anim)",
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.sizeFade,
                    reverseAnimation: StyledToastAnimation.sizeFade,
                    position: StyledToastPosition.center,
                    animDuration: Duration(milliseconds: 400),
                    duration: Duration(seconds: 2),
                    curve: Curves.linear,
                    reverseCurve: Curves.linear);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "normal toast(scale anim)",
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.scale,
                    reverseAnimation: StyledToastAnimation.fade,
                    position: StyledToastPosition.center,
                    animDuration: Duration(seconds: 1),
                    duration: Duration(seconds: 4),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.linear);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast(fadeScale anim)",
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.fadeScale,
                    reverseAnimation: StyledToastAnimation.scaleRotate,
                    position: StyledToastPosition.center,
                    animDuration: Duration(seconds: 1),
                    duration: Duration(seconds: 4),
                    curve: Curves.linear,
                    reverseCurve: Curves.linear);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast(rotate anim)",
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.rotate,
                    reverseAnimation: StyledToastAnimation.fadeRotate,
                    position: StyledToastPosition.center,
                    animDuration: Duration(seconds: 1),
                    duration: Duration(seconds: 4),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.elasticIn);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast(fadeRotate anim)",
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.fadeRotate,
                    reverseAnimation: StyledToastAnimation.fadeScale,
                    position: StyledToastPosition.center,
                    animDuration: Duration(seconds: 1),
                    duration: Duration(seconds: 4),
                    curve: Curves.linear,
                    reverseCurve: Curves.linear);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast(scaleRotate anim)",
              ),
              onTap: () {
                showToast('This is normal toast with animation',
                    context: context,
                    animation: StyledToastAnimation.scaleRotate,
                    reverseAnimation: StyledToastAnimation.fade,
                    position: StyledToastPosition.center,
                    animDuration: Duration(seconds: 1),
                    duration: Duration(seconds: 4),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.linear);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Normal toast with onDismissed($dismissRemind)",
              ),
              onTap: () {
                setState(() {
                  dismissRemind = '';
                });
                showToast('This is normal toast with onDismissed',
                    context: context,
                    animation: StyledToastAnimation.fade,
                    //Toast duration   animDuration * 2 <= duration
                    duration: Duration(seconds: 4),
                    //Animation duration   animDuration * 2 <= duration
                    animDuration: Duration(seconds: 1), onDismiss: () {
                  print('onDismissed');
                  setState(() {
                    dismissRemind = 'dismissed';
                  });
                }, curve: Curves.decelerate, reverseCurve: Curves.linear);
              },
            ),
            Divider(
              height: 0.5,
            ),

            ///Custom toast content widget
            Container(
              margin: EdgeInsets.only(bottom: 10.0, top: 50.0),
              padding: EdgeInsets.only(left: 15.0),
              height: 35.0,
              alignment: Alignment.centerLeft,
              child: Text('Custom toast content widget'),
              color: const Color(0xFFDDDDDD),
            ),
            ListTile(
              title: Text(
                "Custom toast content widget",
              ),
              onTap: () {
                showToastWidget(BannerToastWidget.fail(msg: 'Request failed'),
                    context: context,
                    animation: StyledToastAnimation.slideFromTop,
                    reverseAnimation: StyledToastAnimation.slideToTop,
                    position: StyledToastPosition.top,
                    animDuration: Duration(seconds: 1),
                    duration: Duration(seconds: 4),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.fastOutSlowIn);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Custom toast content widget with icon convinient fail",
              ),
              onTap: () {
                showToastWidget(IconToastWidget.fail(msg: 'failed'),
                    context: context,
                    position: StyledToastPosition.center,
                    animation: StyledToastAnimation.scale,
                    reverseAnimation: StyledToastAnimation.fade,
                    duration: Duration(seconds: 4),
                    animDuration: Duration(seconds: 1),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.linear);
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Custom toast content widget with icon convinient success",
              ),
              onTap: () {
                showToastWidget(IconToastWidget.success(msg: 'success'),
                    context: context,
                    position: StyledToastPosition.center,
                    animation: StyledToastAnimation.scale,
                    reverseAnimation: StyledToastAnimation.fade,
                    duration: Duration(seconds: 4),
                    animDuration: Duration(seconds: 1),
                    curve: Curves.elasticOut,
                    reverseCurve: Curves.linear);
              },
            ),
            Divider(
              height: 0.5,
            ),
          ],
        ),
      ),
    );
  }
}




///description: Toast with icon

class IconToastWidget extends StatefulWidget {
  final Key key;
  final Color backgroundColor;
  final String message;
  final Widget textWidget;
  final double height;
  final double width;
  final String assetName;
  final EdgeInsetsGeometry padding;

  IconToastWidget({
    this.key,
    this.backgroundColor,
    this.textWidget,
    this.message,
    this.height,
    this.width,
    @required this.assetName,
    this.padding,
  }) : super(key: key);

  factory IconToastWidget.fail({String msg}) => IconToastWidget(
        message: msg,
        assetName: 'assets/images/ic_fail.png',
      );

  factory IconToastWidget.success({String msg}) => IconToastWidget(
        message: msg,
        assetName: 'assets/images/ic_success.png',
      );

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IconToastWidgetState();
  }
}

class _IconToastWidgetState extends State<IconToastWidget>
    with TickerProviderStateMixin<IconToastWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget content = Material(
      color: Colors.transparent,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50.0),
          padding: widget.padding ??
              EdgeInsets.symmetric(vertical: 20.0, horizontal: 17.0),
          decoration: ShapeDecoration(
            color: widget.backgroundColor ?? const Color(0x9F000000),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Image.asset(
                  widget.assetName,
                  fit: BoxFit.fill,
                  width: 30,
                  height: 30,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: widget.textWidget ??
                    Text(
                      widget.message ?? '',
                      style: TextStyle(
                          fontSize: Theme.of(context).textTheme.title.fontSize,
                          color: Colors.white),
                      softWrap: true,
                      maxLines: 200,
                    ),
              ),
            ],
          )),
    );

    return content;
  }
}

///
/// Banner type toast widget, example of custom toast content widget when you use [showToastWidget]
///
class BannerToastWidget extends StatelessWidget {
  final Key key;
  final Color backgroundColor;
  final String message;
  final Widget textWidget;
  final double offset;
  final double height;
  final double width;

  BannerToastWidget(
      {this.key,
      this.backgroundColor,
      this.textWidget,
      this.message,
      this.height,
      this.width,
      Offset offset})
      : this.offset = offset == null ? 10.0 : offset,
        super(key: key);

  factory BannerToastWidget.success(
          {String msg, Widget text, BuildContext context}) =>
      BannerToastWidget(
        backgroundColor: context != null
            ? Theme.of(context).toggleableActiveColor
            : Colors.green,
        message: msg,
        textWidget: text,
      );

  factory BannerToastWidget.fail(
          {String msg, Widget text, BuildContext context}) =>
      BannerToastWidget(
        backgroundColor: context != null
            ? Theme.of(context).errorColor
            : const Color(0xBFCC2E2E),
        message: msg,
        textWidget: text,
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget content = Container(
      padding: EdgeInsets.all(17.0),
      margin: EdgeInsets.symmetric(horizontal: 50.0),
      decoration: ShapeDecoration(
        color: backgroundColor ?? Theme.of(context).backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: textWidget ??
          Text(
            message ?? '',
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.title.fontSize,
                color: Colors.white),
          ),
    );

    return content;
  }
}
