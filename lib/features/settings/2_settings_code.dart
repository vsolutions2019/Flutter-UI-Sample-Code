import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutterxui/consts.dart';
import 'package:flutterxui/res/text_style.dart';
import 'package:flutterxui/res/utils.dart';




class SettingsPage2 extends StatelessWidget {
  static const routeName = '/SettingsPage2';


  @override
  Widget build(BuildContext context) {


    /// ----------------------------------------------------------
    /// Build main content with help of Scaffold widget
    /// ----------------------------------------------------------
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Settings',style: textStyle.bigTextAppBar(utils.isLight())),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.purple,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
          ),

          /// ----------------------------------------------------------
          /// Build  scrollable  content with help of SingleChildScrollView widget
          /// ----------------------------------------------------------
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              Constants.images[Random().nextInt(20)]),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "John Doe",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Divider(thickness: 2,),
                const SizedBox(height: 10.0),
                ListTile(
                  leading: Icon(
                    Entypo.email,
                    color: Colors.white,
                  ),
                  title: Text(
                    "E-Mail",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "john.doe@test.com",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Entypo.language,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Languages",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "English",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade400,
                  ),
                  onTap: () {},
                ),

                SwitchListTile(

                  title: Text(
                    "Course Notifications",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "On",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  value: true,
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  title: Text(
                    "Ticket Notifications",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Off",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  value: false,
                  onChanged: (val) {},
                ),
                ListTile(

                  trailing: Icon(
                    Entypo.log_out,
                    color: Colors.white,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
