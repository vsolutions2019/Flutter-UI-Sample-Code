import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterxui/res/text_style.dart';
import 'package:flutterxui/res/utils.dart';


class SettingsPage1 extends StatefulWidget {
  static const routeName = '/SettingsPage1';
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    /// ----------------------------------------------------------
    /// Build main content with help of Scaffold widget
    /// ----------------------------------------------------------
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Settings',style: textStyle.bigTextAppBar(utils.isLight())),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[


          /// ----------------------------------------------------------
          /// Build  scrollable  content with help of SingleChildScrollView widget
          /// ----------------------------------------------------------
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                /// ----------------------------------------------------------
                /// Card widget header
                /// ----------------------------------------------------------
                Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.deepOrange,
                  child: Container(
                    height: ScreenUtil().setHeight(70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage('https://picsum.photos/500/600?random=20'),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "John Doe",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Icon(
                            AntDesign.edit,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),

                Text(
                  "General Settings",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Entypo.email,
                          color: Colors.orange,
                        ),
                        title: Text("Change E-Mail"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change password
                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          AntDesign.phone,
                          color: Colors.orange,
                        ),
                        title: Text("Change Phone Number"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change location
                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          Icons.lock_outline,
                          color: Colors.orange,
                        ),
                        title: Text("Change Password"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change password
                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          MaterialCommunityIcons.earth,
                          color: Colors.orange,
                        ),
                        title: Text("Change Language"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change language
                        },
                      ),

                    ],
                  ),
                ),

                const SizedBox(height: 20.0),
                Text(
                  "Notification Settings",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                SwitchListTile(
                  activeColor: Colors.orange,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Sub-Category"),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  activeColor: Colors.orange,
                  contentPadding: const EdgeInsets.all(0),
                  value: false,
                  title: Text("Courses"),
                  onChanged: null,
                ),
                SwitchListTile(
                  activeColor: Colors.orange,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Tickets Replies"),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  activeColor: Colors.orange,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("New course has been added"),
                  onChanged: null,
                ),

                const SizedBox(height: 60.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// ----------------------------------------------------------
  /// _buildDivider helper method for build divider widget
  /// ----------------------------------------------------------
  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}
