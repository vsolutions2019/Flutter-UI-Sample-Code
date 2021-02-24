import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';

class PageViewWithDotIndicator_ extends StatefulWidget {
  static const routeName = '/PageViewWithDotIndicator_';
  @override
  State createState() => new PageViewWithDotIndicatorState();
}

class PageViewWithDotIndicatorState extends State<PageViewWithDotIndicator_> {
  final _controller = new PageController();

  static const _kDuration = const Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  final _kArrowColor = Colors.black.withOpacity(0.8);

  final List<String> images = Constants.images.sublist(0, 10);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Pageview with Dot Indicator'),
      ),
      body: new IconTheme(
        data: new IconThemeData(color: _kArrowColor),
        child: new Stack(
          children: <Widget>[

            /// ---------------------------------------------------------------------------
            /// Build scrollable content with PageView.builder and AlwaysScrollableScrollPhysics physics
            /// ---------------------------------------------------------------------------
            new PageView.builder(
              physics: new AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return new Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Stack(fit: StackFit.expand, children: [
                          Image.network(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ])));
              },
            ),

            /// ---------------------------------------------------------------------------
            /// Positioned slider pager 2
            /// ----------------------------------------------------------------------------
            new Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: new Container(
                color: Colors.grey[800].withOpacity(0.5),
                padding: const EdgeInsets.all(20.0),
                child: new Center(
                  child: new SlidersPage_2(
                    controller: _controller,
                    itemCount: images.length,
                    onPageSelected: (int page) {
                      _controller.animateToPage(
                        page,
                        duration: _kDuration,
                        curve: _kCurve,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// ---------------------------------------------------------------------------
/// Dotied slider  page widget
/// ----------------------------------------------------------------------------
class SlidersPage_2 extends AnimatedWidget {
  SlidersPage_2({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color: Colors.white,
  }) : super(listenable: controller);

  final PageController controller;

  final int itemCount;

  final ValueChanged<int> onPageSelected;

  final Color color;

  static const double _kDotSize = 8.0;

  static const double _kMaxZoom = 2.0;

  static const double _kDotSpacing = 25.0;

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return new Container(
      width: _kDotSpacing,
      child: new Center(
        child: new Material(
          color: color,
          type: MaterialType.circle,
          child: new Container(
            width: _kDotSize * zoom,
            height: _kDotSize * zoom,
            child: new InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: new List<Widget>.generate(itemCount, _buildDot),
    );
  }
}