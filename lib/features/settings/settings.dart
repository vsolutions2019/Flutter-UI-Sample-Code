import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';
import 'package:flutterxui/providers/app_provider.dart';
import 'package:flutterxui/providers/configs_utils.dart';
import 'package:flutterxui/res/color/color_dark.dart';
import 'package:flutterxui/res/color/color_light.dart';
import 'package:flutterxui/res/edge_margin.dart';
import 'package:flutterxui/res/utils.dart';
import 'package:flutterxui/res/width_height.dart';
import 'package:package_info/package_info.dart';
import 'package:provider/provider.dart';




class SettingsPage extends StatefulWidget {
  static const routeName = '/settingsPage';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SettingPageState();
  }
}

class _SettingPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    AppBar appBar = Constants.appBarSection(
      context,
      "Settings",
      true,
      null,
      shadow: 6,
    );

    double widthC = globalSize.setWidthPercentage(100, context);
    double heightC = globalSize.setHeightPercentage(100, context) -
        appBar.preferredSize.height -
        MediaQuery.of(context).viewPadding.top -
        10;

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: marginEdge.small,
              ),
              Container(
                child: SwitchListTile(
                  title: Text('Dark Mode'),
                  value: Provider.of<AppProvider>(context).theme ==
                          Constants.lightTheme
                      ? false
                      : true,
                  onChanged: (v) {
                    if (v) {
                      Provider.of<AppProvider>(context, listen: false)
                          .setTheme(Constants.darkTheme, "dark");
                      utils.setThem(darkColor);
                    } else {
                      Provider.of<AppProvider>(context, listen: false)
                          .setTheme(Constants.lightTheme, "light");
                      utils.setThem(lightColor);
                    }
                  },
                ),
              ),
              Divider(),
              Container(
                child: ListTile(
                  title: Text('About FlutterX UI'),
                  onTap: () => Navigator.of(context).pushNamed(
                    AboutAppPage.routeName,
                    arguments: "About FlutterX UI",
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/ui_logo.png',width: 30,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class AboutAppPage extends StatefulWidget {
  static const routeName = '/AboutAppPage';

  @override
  _AboutAppPageState createState() => _AboutAppPageState();
}

class _AboutAppPageState extends State<AboutAppPage> {
  PackageInfo _packageInfo;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  void _initPackageInfo() async {
    _packageInfo = await configs.getPackageInfoInstance();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context).settings.arguments as String;
    AppBar appBar = Constants.appBarSection(
      context,
      title,
      true,
      null,
      shadow: 6,
    );
    return Scaffold(
      appBar: appBar,
      key: _scaffoldKey,
      backgroundColor: utils.getThem().backgroundHome,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            _buildInfo1(),
            _buildInfo2(),
            _buildInfo3(),
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
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("Version"),
                    subtitle: Text(_packageInfo.version),
                  ),

                ],
              )),
        ));
  }

  Widget _buildInfo2() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('About Authors',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),

              Divider(),
              ListTile(
                leading: Icon(Icons.file_download),
                title: Text("Check for updates"),
                onTap: () {
//                  configs.setupRemoteConfig(_scaffoldKey);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfo3() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Company',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
              ListTile(
                leading: Icon(Icons.location_city),
                title: Text("Our Home"),
                subtitle: Text("Visit Us"),
                onTap: () {
                  configs.launchURL(
                    "https://sites.google.com/site/omaralshyokh/home",
                  );
                },
              ),
              Divider(),
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
          ),
        ),
      ),
    );
  }
}