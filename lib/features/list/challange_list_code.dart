import 'dart:convert';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// ---------------------------
///  Custom Changing List widget goes here.
/// ---------------------------

class CustomChangingList extends StatefulWidget {
  static const routeName = '/CustomChangingList';
  @override
  _CustomChangingListState createState() => _CustomChangingListState();
}

class _CustomChangingListState extends State<CustomChangingList>
    with SingleTickerProviderStateMixin {
  List<Map<String, String>> boards = [];

  List<Color> color = [];

  AnimationController _titleAnimation;

  ScrollController _scrollController;

  /// ---------------------------
  /// Initialize animation controller and colors list.
  /// ---------------------------

  @override
  void initState() {
    _titleAnimation = new AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        value: 1,
        upperBound: 2,
        lowerBound: 0);
    _scrollController = new ScrollController();
    List list = jsonDecode(json);
    list.forEach((item) {
      boards.add(Map.from(item));
      color.add(Color(int.parse(item['color'])));
    });

    super.initState();
  }

  /// ---------------------------
  /// dispose animation controller stream for memory leak.
  /// ---------------------------

  @override
  void dispose() {
    _titleAnimation.dispose();
    super.dispose();
  }

  double lastPos = 0;

  _onStartScroll(ScrollMetrics metrics) {}

  /// ---------------------------
  /// Catching up all scroll state .
  /// ---------------------------
  _onUpdateScroll(ScrollMetrics metrics) {
    if (lastPos > metrics.pixels) {
      lastPos = metrics.pixels;
      _titleAnimation.animateTo(
        0,
        duration: Duration(milliseconds: 100),
      );
    } else {
      lastPos = metrics.pixels;
      _titleAnimation.animateTo(2, duration: Duration(milliseconds: 100));
    }
  }

  _onEndScroll(ScrollMetrics metrics) {
    _titleAnimation.animateTo(1, duration: Duration(milliseconds: 100));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
          appBar: AppBar(),
        /// ---------------------------
        /// Catching up all scroll state with Notification Listener stream.
        /// ---------------------------

        body: NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            if (scrollNotification is ScrollStartNotification) {
              _onStartScroll(scrollNotification.metrics);
            } else if (scrollNotification is ScrollUpdateNotification) {
              _onUpdateScroll(scrollNotification.metrics);
            } else if (scrollNotification is ScrollEndNotification) {
              _onEndScroll(scrollNotification.metrics);
            }
            return true;
          },

          /// ---------------------------
          /// Building scrollable content.
          /// ---------------------------

          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                pinned: false,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(36.0))),
                leading: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),

              /// ---------------------------
              /// Building scrollable content for links with toolbar state.
              /// ---------------------------

              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                opaque: true,
                                pageBuilder: (context, ani, ani2) {
                                  return NextScreen(
                                    tag: index,
                                    color: color[index],
                                    details: boards[index],
                                  );
                                }));
                      },

                      /// ---------------------------
                      /// distribute color on all list item cards .
                      /// ---------------------------
                      child: Container(
                        height: 170.0,
                        child: Stack(
                          children: <Widget>[
                            Hero(
                                tag: index,
                                child: Container(
                                  color: color[index],
                                  alignment: Alignment.center,
                                )),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Hero(
                                    tag: '$index-title',
                                    child: Material(
                                      color: Colors.transparent,
                                      child: Text(
                                        boards[index]['title'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 4.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Hero(
                                    tag: '$index-img',

                                    /// ---------------------------
                                    /// execute animation according to some calculations.
                                    /// ---------------------------

                                    child: AnimatedBuilder(
                                      animation: _titleAnimation,
                                      builder: (context, c) {
                                        return Transform(
                                          alignment: Alignment.center,
                                          transform: Matrix4.identity()
                                            ..setEntry(3, 2, 0.002)
                                            ..rotateX(pi *
                                                -.36 *
                                                (_titleAnimation.value - 1)),
                                          child: c,
                                        );
                                      },

                                      /// ---------------------------
                                      /// submit images resourses to item list.
                                      /// ---------------------------

                                      child: SizedBox(
                                        child: RotatedBox(
                                          child: Image.asset('assets/images/logo_home.png',width: 100,height: 45,fit: BoxFit.cover,),
                                          quarterTurns: 0,
                                        ),
                                        height: 85.0,
                                        width: 320.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),

                                  /// ---------------------------
                                  /// submit text resourses to item list.
                                  /// ---------------------------
                                  Hero(
                                    tag: '$index-details',
                                    child: Material(
                                      color: Colors.transparent,
                                      child: Text(
                                        boards[index]['sub_title'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            letterSpacing: 4.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: boards.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/// ---------------------------
/// screen details .
/// ---------------------------
class NextScreen extends StatefulWidget {
  final int tag;
  final Color color;
  final Map<String, String> details;

  const NextScreen({Key key, this.tag, this.color, this.details})
      : super(key: key);

  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen>
    with SingleTickerProviderStateMixin {
  bool poped = false;
  AnimationController _animationController;
  CurvedAnimation _animation;

  /// ---------------------------
  ///  Initialize  Animation Controller and duration.
  /// ---------------------------
  @override
  void initState() {
    _animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 600));
    Future.delayed(
        Duration(milliseconds: 400), () => _animationController.forward());

    _animationController.addStatusListener((state) {
      if (state == AnimationStatus.dismissed && !poped) {
        poped = true;
        Navigator.pop(context);
      }
    });
    _animation = CurvedAnimation(
        parent: _animationController, curve: Interval(0.0, 0.6));

    super.initState();
  }

  /// ---------------------------
  ///  Closing  Animation Controller memory leak.
  /// ---------------------------
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _animationController.reverse();
        return false;
      },

      /// ---------------------------
      ///  Building main content with Layout Builder stream helper.
      /// ---------------------------
      child: LayoutBuilder(
        builder: (context, constrains) => AnimatedBuilder(
          animation: _animationController,
          builder: (context, c) => Scaffold(
            backgroundColor: _animationController.value > 0
                ? Colors.white
                : Colors.transparent,

            /// ---------------------------
            ///  Building main content with stack helper.
            /// ---------------------------

            body: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Hero(
                    tag: widget.tag,
                    child: Container(
                      width: lerpDouble(constrains.maxWidth,
                          constrains.maxWidth * .25, _animation.value),
                      height: constrains.maxHeight,
                      color: widget.color,
                    ),
                  ),
                ),

                /// ---------------------------
                ///  Positioned main content according to some calculations.
                /// ---------------------------

                Positioned(
                  top: constrains.maxHeight / 2 - _animation.value * 180 * .25,
                  left: lerpDouble((constrains.maxWidth - 320.0) / 2,
                      constrains.maxWidth * .25 - 160, _animation.value),
                  child: Hero(
                    tag: '${widget.tag}-img',
                    child: Transform.rotate(
                      angle: pi * _animation.value * .5,
                      child: Transform.scale(
                          scale: _animation.value * 0.4 + 1,
                          /*child: Container(
                          height: 80.0,
                          width: 320.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: Colors.grey[100],
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 8,
                                    offset: Offset(1.0, 2.0))
                              ]),
                          child: Container(
                            height: 80.0,
                            width: 320.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              color: widget.color.withOpacity(0.9),
                            ),
                          ),
                        ),*/

                          /// ---------------------------
                          ///  Submit images resources .
                          /// ---------------------------
                          child: SizedBox(
                            child: RotatedBox(
                              child: Image.asset('assets/images/logo_home.png',width: 100,height: 100,fit: BoxFit.cover,),
                              quarterTurns: 0,
                            ),
                            height: 80.0,
                            width: 300.0,
                          )),
                    ),
                  ),
                ),

                /// ---------------------------
                /// Align and  Submit text title resources .
                /// ---------------------------

                Align(
                  alignment: Alignment.topCenter,
                  child: Hero(
                      tag: "${widget.tag}-title",
                      child: SizedBox(
                        width: 200.0,
                      )),
                ),

                /// ---------------------------
                /// Align and  Submit text details resources .
                /// ---------------------------
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Hero(
                      tag: "${widget.tag}-details",
                      child: SizedBox(
                        width: 200.0,
                      )),
                ),

                /// ---------------------------
                /// Align and  Submit animation for details text.
                /// ---------------------------

                Details(
                  controller: _animationController,
                  maxWidth: constrains.maxWidth,
                  maxHeight: constrains.maxHeight,
                  details: widget.details,
                ),

                /// ---------------------------
                /// Positioned text add to cart .
                /// ---------------------------

                Positioned(
                  child: Container(
                    alignment: Alignment.center,
                    height: 88.0,
                    width: constrains.maxWidth,
                    decoration: BoxDecoration(
                        color: Color(0xff111113),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(32.0))),
                    child: Text(
                      "ADD TO CART",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 4,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  bottom: lerpDouble(
                      -120.0,
                      0,
                      CurvedAnimation(
                              parent: _animationController,
                              curve: Interval(0.5, 1))
                          .value),
                ),
                Positioned(
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _animationController.reverse();
                      }),
                  top: lerpDouble(
                      -32,
                      48,
                      CurvedAnimation(
                              parent: _animationController,
                              curve: Interval(0.5, 1))
                          .value),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// ---------------------------
/// widget animated class for links details text with animations.
/// ---------------------------

class Details extends AnimatedWidget {
  final double maxWidth;
  final double maxHeight;
  final Map details;

  const Details(
      {Key key,
      this.details,
      this.maxWidth,
      this.maxHeight,
      AnimationController controller})
      : super(key: key, listenable: controller);

  @override
  Widget build(BuildContext context) {
    String title = details['title'].toString().replaceFirst(' ', '\n');
    List<Widget> childs = <Widget>[
      /// ---------------------------
      /// Positioned  text title  .
      /// ---------------------------

      Positioned(
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            letterSpacing: 8,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        top: 64.0,
        left: lerpDouble(
            maxWidth,
            maxWidth * 0.33,
            CurvedAnimation(parent: listenable, curve: Interval(0.2, 0.6))
                .value),
      ),
    ];

    childs.addAll(_getDetails());
    childs.addAll(_pricingDetails());

    childs.add(Positioned(
      bottom: 160.0,
      left: lerpDouble(maxWidth, maxWidth * 0.5,
          CurvedAnimation(parent: listenable, curve: Interval(0.4, .9)).value),
      child: Container(
        height: 48.0,
        width: maxWidth / 2,
        child: CustomPaint(
          painter: BadgePainter(),
          child: Container(
            padding: EdgeInsets.only(
              left: 32.0,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              '\$---',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 8.0),
            ),
          ),
        ),
      ),
    ));

    return Stack(
      children: childs,
    );
  }

  /// ---------------------------
  /// Make Iterable widget.
  /// ---------------------------
  Iterable<Widget> _getDetails() {
    List<String> det = details['details'].toString().split('*');
    return List.generate(det.length + 1, (ind) {
      if (ind == det.length)
        return Positioned(
          bottom: maxHeight / 2,
          left: lerpDouble(
              maxWidth,
              maxWidth * 0.5,
              CurvedAnimation(
                      parent: listenable,
                      curve: Interval(0.2 + 0.025 * (ind), 0.6 + 0.025 * (ind)))
                  .value),
          child: Container(
            height: 1.0,
            width: maxWidth / 2,
            color: Colors.black,
          ),
        );
      return Positioned(
          child: Text(
            det[det.length - 1 - ind],
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
          ),
          bottom: maxHeight / 2 + 32 + ind * 32,
          left: lerpDouble(
              maxWidth,
              maxWidth * 0.5,
              CurvedAnimation(
                      parent: listenable,
                      curve: Interval(0.2 + 0.025 * (det.length - ind),
                          0.6 + 0.025 * (det.length - ind)))
                  .value));
    });
  }

  /// ---------------------------
  /// Make Iterable widget.
  /// ---------------------------
  Iterable<Widget> _pricingDetails() {
    List<String> det = [
      'PRICE :',
      details['size'].toString().replaceAll("'", '"'),
      'MATERIAL',
      details['material'],
    ];
    return List.generate(det.length, (ind) {
      if (ind == 0 || ind == 2)
        return Positioned(
            child: Text(
              det[ind],
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 6,
                  color: Colors.black),
            ),
            bottom: maxHeight / 2 - 48 - ind * 32,
            left: lerpDouble(
                maxWidth,
                maxWidth * 0.5,
                CurvedAnimation(
                        parent: listenable,
                        curve: Interval(
                            0.35 + 0.025 * (1 + ind), 0.75 + 0.025 * (1 + ind)))
                    .value));
      return Positioned(
          child: Text(
            det[ind],
            style: TextStyle(color: Colors.blueGrey,fontSize: 15.0, fontWeight: FontWeight.w600),
          ),
          bottom: maxHeight / 2 - 48 - ind * 32,
          left: lerpDouble(
              maxWidth,
              maxWidth * 0.5,
              CurvedAnimation(
                      parent: listenable,
                      curve: Interval(
                          0.35 + 0.025 * (1 + ind), 0.75 + 0.025 * (1 + ind)))
                  .value));
    });
  }
}

/// ---------------------------
/// Badge Painter widget  that uses [CustomPainter] .
/// the class that a custom painter uses to paint
/// ---------------------------
class BadgePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()..color = Colors.yellow[700];
    Path badgePath = new Path();
    badgePath
      ..moveTo(0.0, 0.0)
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(4, size.height - size.height / 8)
      ..lineTo(0, size.height - size.height / 8 * 2)
      ..lineTo(4, size.height - size.height / 8 * 3)
      ..lineTo(0, size.height - size.height / 8 * 4)
      ..lineTo(4, size.height - size.height / 8 * 5)
      ..lineTo(0, size.height - size.height / 8 * 6)
      ..lineTo(4, size.height - size.height / 8 * 7)
      ..close();

    canvas.drawPath(badgePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

/// place holder json (Dummy data)
String json = '''
  [
    {
        "title":"FlutteX UI",
        "sub_title":"Amazing app",
        "material":"material Flutte UI",
        "size":"----",
        "details":"Apply multiple interfaces using flutter",
        
        "color":"0xffFF69B4"
    },
    {
         "title":"FlutteX UI",
        "sub_title":"Amazing app",
        "material":"material Flutte UI",
        "size":"----",
        "details":"Apply multiple interfaces using flutter",
        
        "color":"0xff800080"
    },
    {
         "title":"FlutteX UI",
        "sub_title":"Amazing app",
        "material":"material Flutte UI",
        "size":"----",
        "details":"Apply multiple interfaces using flutter",
      
        "color":"0xff009589"
    },
    {
         "title":"FlutteX UI",
        "sub_title":"Amazing app",
        "material":"material Flutte UI",
        "size":"----",
        "details":"Apply multiple interfaces using flutter",
        
        "color":"0xff004565"
    },
    {
         "title":"FlutteX UI",
        "sub_title":"Amazing app",
        "material":"material Flutte UI",
        "size":"----",
        "details":"Apply multiple interfaces using flutter",
        
        "color":"0xff00FFFF"
    },
    {
      "title":"FlutteX UI",
        "sub_title":"Amazing app",
        "material":"material Flutte UI",
        "size":"----",
        "details":"Apply multiple interfaces using flutter",
        
        "color":"0xffd92121"
    },
    {
         "title":"FlutteX UI",
        "sub_title":"Amazing app",
        "material":"material Flutte UI",
        "size":"----",
        "details":"Apply multiple interfaces using flutter",
        "color":"0xff9ACD32"
    },{
         "title":"FlutteX UI",
        "sub_title":"Amazing app",
        "material":"material Flutte UI",
        "size":"----",
        "details":"Apply multiple interfaces using flutter",
        
        "color":"0xffD4AF37"
    },
    {
         "title":"FlutteX UI",
        "sub_title":"Amazing app",
        "material":"material Flutte UI",
        "size":"----",
        "details":"Apply multiple interfaces using flutter",
        "color":"0xff0F55A6"
    }
  ]
''';
