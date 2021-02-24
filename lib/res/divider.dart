import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterxui/res/edge_margin.dart';
import 'package:flutterxui/res/utils.dart';


class DividerLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(marginEdge.small),
        child:  Divider(
          height: 5.0,
          color: utils.getThem().titleAppBar,
        )
    );
  }
}
