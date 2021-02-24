
import 'package:flutter/material.dart';
import 'package:flutterxui/res/text_style.dart';
import 'package:flutterxui/res/utils.dart';

/// ---------------------------
/// List Wheel Scroll widget goes here .
/// ---------------------------

class ListWheelScroll extends StatefulWidget {
  static const routeName = '/ListWheelScroll';
   @override
   _ListWheelScrollViewWidgetState createState() =>
       _ListWheelScrollViewWidgetState();
}

class _ListWheelScrollViewWidgetState
    extends State<ListWheelScroll> {
//        color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)

  @override
  void initState() {
    super.initState();
  }

  List<String> nameList = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
    "This",
    "Comes",
    "To",
    "End",
  ];

  List<Color> colorList = List.generate(16, (index) {
    return Colors.primaries[index];
  });

  @override
  Widget build(BuildContext context) {
    int i = 0;
    if (!utils.isLight()) {
      colorList = colorList.reversed.toList();
    }
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: ListWheelScrollView(
          itemExtent: 100,
          children: <Widget>[
            ...nameList.map((String name) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: colorList[i++],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: utils.getThem().progress7,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text(
                      name,
                      style: textStyle.largeTextStyle,
                    )),
              );
            }
            )
          ],
        ),
      ),
    );
  }
}
