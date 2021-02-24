import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

// This class uses titled_navigation_bar Package
// Link to it :  https://pub.dev/packages/titled_navigation_bar


class TitledNavigationBottomPage extends StatefulWidget {
  static const routeName = '/TitledNavigationBottomPage';

  @override
  _TitledNavigationBottomPageState createState() => _TitledNavigationBottomPageState();
}

class _TitledNavigationBottomPageState extends State<TitledNavigationBottomPage>{
  final List<TitledNavigationBarItem> items = [
    TitledNavigationBarItem(title: 'Home', icon: Icons.home),
    TitledNavigationBarItem(title: 'Favorite', icon: Icons.favorite),
    TitledNavigationBarItem(title: 'Chat', icon: Icons.chat),
    TitledNavigationBarItem(title: 'Profile', icon: Icons.person_outline),
    TitledNavigationBarItem(title: 'Settings', icon: Icons.settings),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

          ],
        ),
      ),
      bottomNavigationBar: TitledBottomNavigationBar(
        onTap: (index) => print("Selected Index: $index"),
        reverse: true,
        curve: Curves.easeInBack,
        items: items,
        activeColor: Colors.red,
        inactiveColor: Colors.blueGrey,
      ),
    );
  }
}