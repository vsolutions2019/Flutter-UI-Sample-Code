import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

/// This class uses this library flutter_staggered_animations
/// the link to it : https://github.com/mobiten/flutter_staggered_animations

class AnimatedGrid extends StatefulWidget {
  static const routeName = '/AnimatedGrid';

  AnimatedGrid({Key key}) : super(key: key);

  @override
  _AnimatedGridState createState() => _AnimatedGridState();
}

class _AnimatedGridState extends State<AnimatedGrid> {
  @override
  Widget build(BuildContext context) {
    var columnCount = 3;

    /// ------------------------------------
    /// Build Main content with AutoRefresh widget
    /// ------------------------------------
    return AutoRefresh(
      duration: const Duration(milliseconds: 3000),
      child: Scaffold(
        appBar: AppBar(),

        /// ------------------------------------
        /// Build Main content with SafeArea widget
        /// ------------------------------------
        body: SafeArea(
          /// ------------------------------------
          /// Build Main content with AnimationLimiter widget
          /// ------------------------------------
          child: AnimationLimiter(
            child: GridView.count(
              childAspectRatio: 1.0,
              padding: const EdgeInsets.all(8.0),
              crossAxisCount: columnCount,
              children: List.generate(
                100,
                (int index) {
                  /// ------------------------------------
                  /// adding AnimationConfiguration configs
                  /// ------------------------------------
                  return AnimationConfiguration.staggeredGrid(
                    columnCount: columnCount,
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: SlideAnimation(
                      // scale: 0.5,
                      verticalOffset: (new Random().nextInt(
                              MediaQuery.of(context).size.height.toInt()))
                          .toDouble(),
                      horizontalOffset: (new Random().nextInt(
                              MediaQuery.of(context).size.width.toInt()))
                          .toDouble(),
                      child: FadeInAnimation(
                        child: EmptyCard(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// ------------------------------------
/// EmptyCard widget item in grid
/// ------------------------------------
class EmptyCard extends StatelessWidget {
  final double width;
  final double height;

  const EmptyCard({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/03.png'),
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            offset: const Offset(0.0, 4.0),
          ),
        ],
      ),
    );
  }
}

/// Automatically rebuild [child] widget after the given [duration]
class AutoRefresh extends StatefulWidget {
  final Duration duration;
  final Widget child;

  AutoRefresh({
    Key key,
    @required this.duration,
    @required this.child,
  })  : assert(duration != null),
        super(key: key);

  @override
  _AutoRefreshState createState() => _AutoRefreshState();
}

class _AutoRefreshState extends State<AutoRefresh> {
  int keyValue;
  ValueKey key;

  Timer _timer;

  @override
  void initState() {
    super.initState();

    keyValue = 0;
    key = ValueKey(keyValue);

    _recursiveBuild();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      child: widget.child,
    );
  }

  void _recursiveBuild() {
    _timer = Timer(
      widget.duration,
      () {
        setState(() {
          keyValue = keyValue + 1;
          key = ValueKey(keyValue);
          _recursiveBuild();
        });
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
