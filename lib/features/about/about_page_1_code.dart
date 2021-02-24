import 'package:flutter/material.dart';

class About1 extends StatelessWidget {
  static const routeName = '/About1';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child:  Column(
          children: <Widget>[

            _buildInfo1(),
            _buildInfo2(),
            _buildInfo3()
          ],
        ),
      ),
    );
  }

  Widget _buildInfo1() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[

                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.redAccent,
                        child: Image.asset(
                          'assets/images/ui_logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('FlutterX UI'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("Version"),
                    subtitle: Text("1.0"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.cached),
                    title: Text("Changelog"),
                  ),
                  Divider(),
                  ListTile(
                      leading: Icon(Icons.offline_pin),
                      title: Text("License")
                  ),

                ],
              )
          ),
        )
    );
  }

  Widget _buildInfo2() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text('Author', style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400)),

                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Omar & Nabil"),
                    subtitle: Text("Syria"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.file_download),
                    title: Text("Download From Cloud"),
                  ),

                ],
              )
          ),
        )
    );
  }

  Widget _buildInfo3() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(15),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text('Company', style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400)),

                  ListTile(
                    leading: Icon(Icons.location_city),
                    title: Text("IT-SMART"),
                    subtitle: Text("Mobile App Specialist"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Syria , Damascus"),
                  ),

                ],
              )
          ),
        )
    );
  }
}