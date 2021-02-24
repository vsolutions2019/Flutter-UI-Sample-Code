import 'package:flutter/material.dart';

class StandardImageList extends StatefulWidget {
  static const routeName = '/StandardImageList';
  @override
  _StandardImageListState createState() => _StandardImageListState();
}

class _StandardImageListState extends State<StandardImageList> {
  final MyGridView myGridView = new MyGridView();

  @override
  Widget build(BuildContext context) {
    /// ------------------------------------
    /// Build main content with safeArea widget
    /// ------------------------------------
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Standard Grid'),
        ),
        body: new Container(
          decoration: BoxDecoration(
            /// ------------------------------------
            /// Decoration Image background
            /// ------------------------------------
            image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.darken),
                image: new AssetImage('assets/images/03.png'),
                fit: BoxFit.cover),
          ),
          child: myGridView,
        ),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /// ------------------------------------
    /// Main content gridView.count
    /// ------------------------------------
    return GridView.count(
      primary: true,
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 1,
      mainAxisSpacing: 3.0,
      crossAxisSpacing: 3.0,
      children: <Widget>[
        getStructuredGridCell("GridView", "assets/images/01.png"),
        getStructuredGridCell("GridView", "assets/images/02.png"),
        getStructuredGridCell("GridView", "assets/images/air-hostess.png"),
        getStructuredGridCell("GridView", "assets/images/airplane.png"),
        getStructuredGridCell("GridView", "assets/images/taxi-driver.png"),
        getStructuredGridCell("GridView", "assets/images/waiter.png"),
        getStructuredGridCell("GridView", "assets/images/01.png"),
        getStructuredGridCell("GridView", "assets/images/02.png"),
        getStructuredGridCell("GridView", "assets/images/air-hostess.png"),
        getStructuredGridCell("GridView", "assets/images/airplane.png"),
        getStructuredGridCell("GridView", "assets/images/taxi-driver.png"),
        getStructuredGridCell("GridView", "assets/images/waiter.png"),
        getStructuredGridCell("GridView", "assets/images/01.png"),
        getStructuredGridCell("GridView", "assets/images/02.png"),
        getStructuredGridCell("GridView", "assets/images/air-hostess.png"),
        getStructuredGridCell("GridView", "assets/images/airplane.png"),
        getStructuredGridCell("GridView", "assets/images/taxi-driver.png"),
        getStructuredGridCell("GridView", "assets/images/waiter.png"),
        getStructuredGridCell("GridView", "assets/images/01.png"),
        getStructuredGridCell("GridView", "assets/images/02.png"),
        getStructuredGridCell("GridView", "assets/images/air-hostess.png"),
        getStructuredGridCell("GridView", "assets/images/airplane.png"),
        getStructuredGridCell("GridView", "assets/images/taxi-driver.png"),
        getStructuredGridCell("GridView", "assets/images/waiter.png"),
      ],
    );
  }

  /// ------------------------------------
  /// GestureDetector widget item in grid
  /// ------------------------------------
  GestureDetector getStructuredGridCell(name, image) {
    return new GestureDetector(
        child: Card(
          /// ------------------------------------
          /// RoundedRectangleBorder widget item for grid
          /// ------------------------------------
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 20,
          margin: EdgeInsets.only(top: 10, left: 5, right: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(

                    /// ------------------------------------
                    /// Main content image widget item for grid
                    /// ------------------------------------
                    image: AssetImage(image),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ),
        onTap: () {});
  }
}
