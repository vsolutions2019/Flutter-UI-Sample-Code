import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class DraggableScrollableSheetWidget extends StatefulWidget {
  static const routeName = '/DraggableScrollableSheetWidget';
   @override
  _DraggableScrollableSheetWidgetState createState() =>
      _DraggableScrollableSheetWidgetState();
}

class _DraggableScrollableSheetWidgetState
    extends State<DraggableScrollableSheetWidget> {

  @override
  void initState() {
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black87,
            child: Center(
              child: Text(
                "Swipe up from the bottom to drag scrollable sheet",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: DraggableScrollableSheet(
              maxChildSize: 0.9,
              initialChildSize: 0.2,
              minChildSize: 0.2,
              builder: (context, scrollController) {
                return Container(
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(
                          'Item $index',
                          style: TextStyle(
                              color: Theme.of(context).backgroundColor),
                        ),
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Theme.of(context).primaryColor,

                    /// To set a shadow behind the parent container
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, -2.0),
                        blurRadius: 4.0,
                      ),
                    ],

                    /// To set radius of top left and top right
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
