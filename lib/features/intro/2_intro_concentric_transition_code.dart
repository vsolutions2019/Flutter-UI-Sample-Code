import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// this class uses this library : flutter-concentric-transition
/// the link to it is  : https://pub.dev/packages/concentric_transition#-installing-tab-

class OnBoardingPage extends StatelessWidget {
  static const routeName = '/OnBoardingPage';
  /// -----------------------------------------------
  /// making list of PageData needed to pass in ConcentricPageView constructor.
  /// -----------------------------------------------
  final List<PageData> pages = [
    /// -----------------------------------------------
    /// PageData dart class for storing data in it (icon title and some styling)
    /// -----------------------------------------------
    PageData(
      icon: Icons.format_size,
      title: "Choose your\ninterests",
      textColor: Colors.white,
      bgColor: Color(0xFFFDBFDD),
    ),
    PageData(
      icon: Icons.hdr_weak,
      title: "Drag and\ndrop to move",
      bgColor: Color(0xFFFFFFFF),
    ),
    PageData(
      icon: Icons.bubble_chart,
      title: "Local news\nstories",
      bgColor: Color(0xFF0043D0),
      textColor: Colors.white,
    ),
  ];

  List<Color> get colors => pages.map((p) => p.bgColor).toList();

  @override
  Widget build(BuildContext context) {
    /// -----------------------------------------------
    /// Build main content with MaterialApp widget.
    /// -----------------------------------------------
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /// -----------------------------------------------
        /// Build Into with ConcentricPageView widget and adding needed configs.
        /// -----------------------------------------------
        body: ConcentricPageView(
          colors: colors,
          opacityFactor: 1.0,
          scaleFactor: 0.0,
          radius: 500,
          curve: Curves.ease,
          duration: Duration(seconds: 2),
          verticalPosition: 0.7,
          direction: Axis.vertical,
//          itemCount: pages.length,
//          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (index, value) {
            PageData page = pages[index % pages.length];
            // For example scale or transform some widget by [value] param
            //            double scale = (1 - (value.abs() * 0.4)).clamp(0.0, 1.0);

            /// -----------------------------------------------
            /// Spread out the pages for suitable items.
            /// -----------------------------------------------
            return Container(
              /// -----------------------------------------------
              /// Adding styling for items
              /// -----------------------------------------------
              child: Theme(
                data: ThemeData(
                  textTheme: TextTheme(
                    title: TextStyle(
                      color: page.textColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Helvetica',
                      letterSpacing: 0.0,
                      fontSize: 36,
                    ),
                    subtitle: TextStyle(
                      color: page.textColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ),

                /// -----------------------------------------------
                /// Expressing data within PageCard widget
                /// -----------------------------------------------
                child: PageCard(page: page),
              ),
            );
          },
        ),
      ),
    );
  }
}

/// -----------------------------------------------
/// Helper widget  for showing data within. You can customize it as it's own.
/// -----------------------------------------------
class PageCard extends StatelessWidget {
  final PageData page;

  const PageCard({
    Key key,
    @required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          /// -----------------------------------------------
          /// Build main image.
          /// -----------------------------------------------
          _buildPicture(context),
          SizedBox(height: 80),

          /// -----------------------------------------------
          /// Build text details.
          /// -----------------------------------------------
          _buildText(context),
        ],
      ),
    );
  }

  Widget _buildText(BuildContext context) {
    return Text(
      page.title,
      style: Theme.of(context).textTheme.title,
      textAlign: TextAlign.center,
    );
  }

  /// -----------------------------------------------
  /// _buildPicture helper method .
  /// -----------------------------------------------
  Widget _buildPicture(
    BuildContext context, {
    double size = 190,
    double iconSize = 170,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
        color: page.bgColor
//            .withBlue(page.bgColor.blue - 40)
            .withGreen(page.bgColor.green + 20)
            .withRed(page.bgColor.red - 100)
            .withAlpha(90),
      ),
      margin: EdgeInsets.only(
        top: 140,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(
            child: RotatedBox(
              quarterTurns: 2,
              child: Icon(
                page.icon,
                size: iconSize + 20,
                color: page.bgColor
                    .withBlue(page.bgColor.blue - 10)
                    .withGreen(220),
              ),
            ),
            right: -5,
            bottom: -5,
          ),
          Positioned.fill(
            child: RotatedBox(
              quarterTurns: 5,
              child: Icon(
                page.icon,
                size: iconSize + 20,
                color: page.bgColor.withGreen(66).withRed(77),
              ),
            ),
          ),
          Icon(
            page.icon,
            size: iconSize,
            color: page.bgColor.withRed(111).withGreen(220),
          ),
        ],
      ),
    );
  }
}

/// -----------------------------------------------
/// PageData dart class model for storing data in it.
/// -----------------------------------------------
class PageData {
  final String title;
  final IconData icon;
  final Color bgColor;
  final Color textColor;

  PageData({
    this.title,
    this.icon,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
  });
}
