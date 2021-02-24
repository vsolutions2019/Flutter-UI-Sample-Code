
import 'dart:math';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';


/// ---------------------------
///  Custom Changing List widget goes here.
/// ---------------------------

class ExpandableList extends StatefulWidget {
  static const routeName = '/ExpandableList';
  @override
  State createState() {
    return ExpandableListState();
  }
}

class ExpandableListState extends State<ExpandableList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandable List"),
      ),
      body: ListView(
        children: <Widget>[
          Card1(),
          Card2(),
          _buildExpandableList()
        ].map((w) {
          return Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
            ),
            child: w,
          );
        }).toList(),
      ),
    );
  }

  Widget _buildExpandableList() {
    return SizedBox(
      height: 280.0,
      child: ListView(
        children: <Widget>[
          Card(
            elevation: 2.0,
            child: ExpansionTile(
              title: const Text('Sublist'),
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Map'),
                ),
                ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text('Album'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone'),
                ),
                ListTile(
                  leading: Icon(Icons.desktop_mac),
                  title: Text('DeskTop MAC'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
const title = "Angelina Jolie";
const loremIpsum =
    "Angelina Jolie is an American actress, filmmaker, and humanitarian. "
    "The recipient of such accolades as an Academy Award and three Golden Globe Awards,"
    " she has been named Hollywood's highest-paid actress multiple times."
    "Born Angelina Jolie Voight in Los Angeles, California, she is the daughter of actors Jon Voight and Marcheline Bertrand."
    " She is the sister of actor James Haven, and the niece of singer-songwriter C"
    "hip Taylor  and geologist and volcanologist Barry Voight. "
    "Her godparents are actors Jacqueline Bisset and Maximilian Schell."
    " On her father's side, Jolie is of German and Slovak descent,"
    " and on her mother's side, she is of primarily French Canadian, Dutch, and German ancestry."
    " Like her mother, Jolie has stated that she is part Iroquois, "
    "although her only known indigenous ancestors were 17th-century Hurons";

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: NetworkImage( Constants.images[(new Random()).nextInt(Constants.images.length)]),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              ExpandablePanel(
                 header: Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.body2,
                    )),
                collapsed: Text(
                  loremIpsum,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Text(
                  loremIpsum,
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding:
                    EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    buildImg(String path, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.rectangle,
              image:
              DecorationImage(image: NetworkImage(path), fit: BoxFit.cover),
            ),
          ));
    }

    buildCollapsed1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context).textTheme.body1,
                  ),
                ],
              ),
            ),
          ]);
    }

    buildCollapsed2() {
      return buildImg(
          Constants.images[(new Random()).nextInt(Constants.images.length)],
          150.0);
    }

    buildCollapsed3() {
      return Container();
    }

    buildExpanded1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context).textTheme.body1,
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
          ]);
    }

    buildExpanded2() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: buildImg('assets/lake_pichola6.jpg', 100.0)),
              Expanded(child: buildImg('assets/lake_pichola3.jpg', 100.0)),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: buildImg('assets/lake_pichola4.jpg', 100.0)),
              Expanded(child: buildImg('assets/lake_pichola1.jpg', 100.0)),
            ],
          ),
        ],
      );
    }

    buildExpanded3() {
      return Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "  Angelina Jolie is an American actress, filmmaker, and humanitarian. "
                  "The recipient of such accolades as an Academy Award and three Golden Globe Awards,"
                  " she has been named Hollywood's highest-paid actress multiple times.",
              softWrap: true,
            ),
          ],
        ),
      );
    }

    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expandable(
                collapsed: buildCollapsed1(),
                expanded: buildExpanded1(),
              ),
              Expandable(
                collapsed: buildCollapsed2(),
                expanded: buildExpanded2(),
              ),
              Expandable(
                collapsed: buildCollapsed3(),
                expanded: buildExpanded3(),
              ),
              Divider(
                height: 0.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Builder(
                    builder: (context) {
                      var exp = ExpandableController.of(context);
                      return MaterialButton(
                        child: Text(
                          exp.expanded ? "COLLAPSE" : "EXPAND",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.deepPurple),
                        ),
                        onPressed: () {
                          exp.toggle();
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

