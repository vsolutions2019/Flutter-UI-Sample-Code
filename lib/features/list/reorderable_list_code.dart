import 'package:flutter/material.dart';
import 'package:flutter_reorderable_list/flutter_reorderable_list.dart';



/// This class uses the flutter reorderable list  library
/// Link to : https://pub.dev/packages/flutter_reorderable_list


class ReorderableListDemo extends StatefulWidget {
  static const routeName = '/ReorderableListDemo';
  @override
  _ReorderableListDemoState createState() => _ReorderableListDemoState();
}

class _ReorderableListDemoState extends State<ReorderableListDemo> {
  List<MyItem> _sampleItems;
  int _selectedView;

  /// ---------------------------
  /// Initialize list item .
  /// ---------------------------
  @override
  void initState() {
    super.initState();
    _selectedView = 0;

    _sampleItems = [];
    _sampleItems.add(MyItem(8.toString(), Icons.folder, 'Folder'));
    _sampleItems.add(MyItem(4.toString(), Icons.desktop_mac, 'DeskTop MAC'));
    _sampleItems.add(MyItem(14.toString(), Icons.insert_chart, 'Chart'));
    _sampleItems.add(MyItem(11.toString(), Icons.group, 'Group'));
    _sampleItems.add(MyItem(15.toString(), Icons.laptop, 'Laptop'));
    _sampleItems.add(MyItem(5.toString(), Icons.device_hub, 'Device Hub'));
    _sampleItems.add(MyItem(6.toString(), Icons.fastfood, 'Fast Food'));
    _sampleItems.add(MyItem(7.toString(), Icons.flag, 'Flag'));
    _sampleItems.add(MyItem(3.toString(), Icons.phone, 'Phone'));
    _sampleItems.add(MyItem(1.toString(), Icons.map, 'Map'));
    _sampleItems.add(MyItem(10.toString(), Icons.keyboard, 'Keyboard'));
    _sampleItems.add(MyItem(2.toString(), Icons.photo_album, 'Album'));
    _sampleItems.add(MyItem(12.toString(), Icons.headset, 'Headset'));
    _sampleItems.add(MyItem(9.toString(), Icons.games, 'Games'));
    _sampleItems.add(MyItem(13.toString(), Icons.home, 'Home'));
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Reorderable List';
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: new Text(title),
      ),

      /// ---------------------------
      /// Build list items With scrollable content.
      /// ---------------------------
      body: Scrollbar(
        child: ReorderableListView(
          onReorder: _onReorder,
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          children: _sampleItems
              .map((MyItem item) => _buildListTile(context, item))
              .toList(),
        ),
      ),
    );
  }

  /// ---------------------------
  /// Changing state order list item .
  /// ---------------------------
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final MyItem item = _sampleItems.removeAt(oldIndex);
      _sampleItems.insert(newIndex, item);
    });
  }

  /// ---------------------------
  /// Build list item with helper method to iterate on it.
  /// ---------------------------
  Widget _buildListTile(BuildContext context, MyItem item) {
    // Widget options = _buildOptions(item);

    return new Card(
      elevation: 3.0,
      color: Colors.black87.withOpacity(0.1),
      margin: const EdgeInsets.only(right: 16.0, left: 16.0, top: 16.0,bottom: 16.0),
      key: Key(item.key),
      child: ListTile(
        leading: Icon(item.icon),
        title: Text(
          item.title,
        ),
      ),
    );
  }
}

/// ---------------------------
/// Class model for list item.
/// ---------------------------
class MyItem {
  MyItem(this.key, this.icon, this.title);

  final String key;
  final IconData icon;
  final String title;

  bool operator ==(o) => o is MyItem && o.key == key;

  int get hashCode => key.hashCode;
}
