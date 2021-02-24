import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutterxui/consts.dart';


class SwipeableList extends StatefulWidget {
  static const routeName = '/SwipeableList';
  @override
  _SwipeableListState createState() => _SwipeableListState();
}

class _SwipeableListState extends State<SwipeableList> {
  List<LeaveBehindItem> leaveBehindItems;
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();
  DismissDirection _dismissDirection = DismissDirection.horizontal;

  /// ---------------------------
  /// Building list of LeaveBehindItem widget through generate func .
  /// ---------------------------

  void initListItems() {
    int newIndex;
    leaveBehindItems = List<LeaveBehindItem>.generate(16, (int index) {
      newIndex = index + 1;
      return LeaveBehindItem(
        index: index,
        initials: Constants.images[index],
        name: 'Item $index Sender',
        subject: 'Subject: $index',
        body: "[$index] first line of the message's body...",
      );
    });
  }

  @override
  void initState() {
    super.initState();
    initListItems();
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Swipeable List';
    return new Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(title),
        ),

        /// ---------------------------
        /// Building main content with some decoration .
        /// ---------------------------

        body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.8), BlendMode.darken),
              image:  NetworkImage(
                Constants.images[
                Random().nextInt(Constants.images.length)],
              ),
              fit: BoxFit.cover,
            ),
          ),

          /// ---------------------------
          /// List view to spread out the leaveBehindItems widget items .
          /// ---------------------------
          child: ListView(
            children: leaveBehindItems.map<Widget>((LeaveBehindItem item) {
              return _LeaveBehindListItem(
                item: item,
                onArchive: _handleArchive,
                onDelete: _handleDelete,
                dismissDirection: _dismissDirection,
              );
            }).toList(),
          ),
        ));
  }

  /// ---------------------------
  /// helper method for handle archive  action .
  /// ---------------------------

  void _handleArchive(LeaveBehindItem item) {
    if(mounted){
      setState(() {
        leaveBehindItems.remove(item);
      });

    }

  }

  /// ---------------------------
  /// helper method for handle delete  action .
  /// ---------------------------
  void _handleDelete(LeaveBehindItem item) {
    setState(() {
      leaveBehindItems.remove(item);
    });
  }

  /// ---------------------------
  /// helper method for handle undo  action .
  /// ---------------------------

  void handleUndo(LeaveBehindItem item) {
    final int insertionIndex = lowerBound(leaveBehindItems, item);
    setState(() {
      leaveBehindItems.insert(insertionIndex, item);
    });
  }
}

/// ---------------------------
/// LeaveBehindItem helper method for holding data in it with comparable interface.
/// ---------------------------

class LeaveBehindItem implements Comparable<LeaveBehindItem> {
  LeaveBehindItem(
      {this.index, this.initials, this.name, this.subject, this.body});

  LeaveBehindItem.from(LeaveBehindItem item)
      : index = item.index,
        initials = item.initials,
        name = item.name,
        subject = item.subject,
        body = item.body;

  final int index;
  final String initials;
  final String name;
  final String subject;
  final String body;

  @override
  int compareTo(LeaveBehindItem other) => index.compareTo(other.index);
}

/// ---------------------------
/// _LeaveBehindListItem widget item in list view for holding data .
/// ---------------------------

class _LeaveBehindListItem extends StatelessWidget {
  const _LeaveBehindListItem({
    Key key,
    @required this.item,
    @required this.onArchive,
    @required this.onDelete,
    @required this.dismissDirection,
  }) : super(key: key);

  final LeaveBehindItem item;
  final DismissDirection dismissDirection;
  final void Function(LeaveBehindItem) onArchive;
  final void Function(LeaveBehindItem) onDelete;

  void _handleArchive() {
    onArchive(item);
  }

  void _handleDelete() {
    onDelete(item);
  }

  @override
  Widget build(BuildContext context) {

    /// ---------------------------
    /// Building main content with card, CustomSemanticsAction, Dismissible and container widget .
    /// ---------------------------

    return Container(
      decoration: new BoxDecoration(boxShadow: [
        new BoxShadow(
            color: Colors.black45,
            blurRadius: 2.0,
            spreadRadius: 3.0,
            offset: Offset(5.0, 5.0)),
      ]),
      child: new Card(
        margin: const EdgeInsets.only(top: 20.0, right: 5.0, left: 5.0),
        color: const Color(0xFFB0C4DE),
        child: Semantics(
          customSemanticsActions: <CustomSemanticsAction, VoidCallback>{
            const CustomSemanticsAction(label: 'Archive'): _handleArchive,
            const CustomSemanticsAction(label: 'Delete'): _handleDelete,
          },
          child: Dismissible(
            key: ObjectKey(item),
            direction: dismissDirection,
            onDismissed: (DismissDirection direction) {
              if (direction == DismissDirection.endToStart)
                _handleArchive();
              else
                _handleDelete();
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.center,
              child: const ListTile(
                leading: Icon(Icons.delete, color: Colors.white, size: 36.0),
              ),
            ),
            secondaryBackground: Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: const ListTile(
                trailing: Icon(Icons.archive, color: Colors.white, size: 36.0),
              ),
            ),
            child: new Container(
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.only(right: 16.0),
                    child: new Image(
                      height: 200,
                      width: 200,
                      fit: BoxFit.fill,
                      image: new NetworkImage(item.initials),
                    ),
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(item.name,
                          style: new TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold)),
                      new Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: new Text(
                          item.subject,
                          style: new TextStyle(fontSize: 16.0),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
