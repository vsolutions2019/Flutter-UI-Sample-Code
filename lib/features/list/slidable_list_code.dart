
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutterxui/res/utils.dart';


///This class  uses Slidable List library
/// link to : https://pub.dev/packages/flutter_slidable

class SlidableList extends StatefulWidget {
  static const routeName = '/SlidableList';
  @override
  _SlidableListState createState() => _SlidableListState();
}

class _SlidableListState extends State<SlidableList> {
  SlidableController slidableController;
  List<_ListItem> listItems;

  void initListItems() {
    int newIndex;
    listItems = List<_ListItem>.generate(16, (int index) {
      newIndex = index + 1;

      /// ---------
      /// list item with all required data .
      /// ---------
      return _ListItem(
        index: index,
        initials: 'assets/images/01.png',
        name: 'Item $index Sender',
        subject: 'Subject: $index',
        body: "[$index] first line of the message's body...",
      );
    });
  }

  @override
  void initState() {
    super.initState();
    slidableController = new SlidableController(
      onSlideAnimationChanged: handleSlideAnimationChanged,
      onSlideIsOpenChanged: handleSlideIsOpenChanged,
    );
    initListItems();
  }

  Animation<double> _rotationAnimation;
  Color _fabColor = Colors.blue;

  void handleSlideAnimationChanged(Animation<double> slideAnimation) {
    setState(() {
      _rotationAnimation = slideAnimation;
    });
  }

  void handleSlideIsOpenChanged(bool isOpen) {
    setState(() {
      _fabColor = isOpen ? utils.getThem().progress4: utils.getThem().progress6;
    });
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Slidable List';
    return new Scaffold(
      backgroundColor: Colors.transparent,
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken,
            ),
            image: new AssetImage("assets/images/03.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: new Center(
          ///  OrientationBuilder for Orientation side (top  or down )
          child: new OrientationBuilder(

            builder: (context, orientation) => _buildList(
                context,
                orientation == Orientation.portrait
                    ? Axis.vertical
                    : Axis.horizontal),

          ),
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, Axis direction) {
    return new ListView.builder(

      scrollDirection: direction,
      itemBuilder: (context, index) {
        final Axis slidableDirection =
        direction == Axis.horizontal ? Axis.vertical : Axis.horizontal;
        return _getSlidableWithLists(context, index, slidableDirection);
      },
      itemCount: listItems.length,
    );
  }

  Widget _buildRowItem(int index) {
    final _ListItem item = listItems[index];
    return new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Container(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          margin: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: new CircleAvatar(
            radius: 30.0,
            backgroundImage: new AssetImage(item.initials),
          ),
        ),
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(item.name,
                style: new TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(
                item.subject,
                style: new TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _getSlidableWithLists(
      BuildContext context, int index, Axis direction) {
    final _ListItem item = listItems[index];
    return Container(
      margin: const EdgeInsets.only(top: 10.0, right: 5.0, left: 5.0),
      child: new Card(
        elevation: 4.0,
        color: Colors.white24,
        child: new Slidable(
          key: new Key(item.name),
          controller: slidableController,
          direction: direction,

          slideToDismissDelegate: new SlideToDismissDrawerDelegate(

            onDismissed: (actionType) {
              _showSnackBar(
                  context,
                  actionType == SlideActionType.primary
                      ? 'Dismiss Archive'
                      : 'Dimiss Delete');
              setState(() {
                listItems.removeAt(index);
              });
            },
          ),
          delegate: _getDelegate(item.index),
          actionExtentRatio: 0.30,
          child: _buildRowItem(index),
          secondaryActions: <Widget>[
            new IconSlideAction(
              caption: 'More',
              color: Colors.grey.shade200,
              icon: Icons.more_horiz,
              onTap: () => _showSnackBar(context, 'More'),
              closeOnTap: false,
            ),
            new IconSlideAction(
              caption: 'Delete',
              color: Colors.red,
              icon: Icons.delete,
              onTap: () => _showSnackBar(context, 'Delete'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String text) {
    Scaffold.of(context).showSnackBar(SnackBar(content: new Text(text)));
  }

  static SlidableDelegate _getDelegate(int index) {
      switch (index % 4) {
      case 0:
        return new SlidableBehindDelegate();
      case 1:
        return new SlidableStrechDelegate();
      case 2:
        return new SlidableScrollDelegate();
      case 3:
        return new SlidableDrawerDelegate();
      default:
        return null;
    }
  }
}

class _ListItem {
  _ListItem({this.index, this.initials, this.name, this.subject, this.body});

  final int index;
  final String initials;
  final String name;
  final String subject;
  final String body;
}
