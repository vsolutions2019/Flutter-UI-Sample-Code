import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;

// This class uses bmnav Package
// Link to it :  https://pub.dev/packages/bmnav


class MainBotttomNaviWidget extends StatefulWidget {
  static const routeName = '/MainBotttomNaviWidget';
  @override
  _MainBotttomNaviWidgetState createState() => _MainBotttomNaviWidgetState();
}

class _MainBotttomNaviWidgetState extends State<MainBotttomNaviWidget> {
  int currentTab = 0;
  final List<Widget> pages = [
    HomeScreen(),
    ProfileScreen(),
    NotificationsScreen(),
    MoreScreen()
  ];
  Widget currentScreen = HomeScreen();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: bmnav.BottomNav(
        index: currentTab,
        //if you don't show text tab in bar set to false
        labelStyle: bmnav.LabelStyle(visible: true,showOnSelect: true),
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = pages[i];
          });
        },
        items: [
          bmnav.BottomNavItem(Icons.home, label: 'Home'),
          bmnav.BottomNavItem(Icons.person_outline, label: 'Profile'),
          bmnav.BottomNavItem(Icons.notifications_active, label: 'Notifications'),
          bmnav.BottomNavItem(Icons.more_vert, label: 'More')
        ],elevation: 7,
      ),
    );
  }
}

// Home Screen
class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(50.0),
        child: Text('Home', style: TextStyle(color: Colors.black, fontSize: 24.0)),
      ),
    );
  }
}

// More Screen
class MoreScreen extends StatefulWidget {

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(50.0),
        child: Text('More', style: TextStyle(color: Colors.black, fontSize: 24.0)),
      ),
    );
  }
}

// Profile Screen
class ProfileScreen extends StatefulWidget {

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(50.0),
        child: Text('Profile', style: TextStyle(color: Colors.black, fontSize: 24.0)),
      ),
    );
  }
}

// Notifications Screen
class NotificationsScreen extends StatefulWidget {

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(50.0),
        child: Text('Notifications', style: TextStyle(color: Colors.black, fontSize: 24.0)),
      ),
    );
  }
}