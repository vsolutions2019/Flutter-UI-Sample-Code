import 'package:flutter/material.dart';
import 'package:flutterxui/res/edge_margin.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';




class Profile1 extends StatefulWidget {
  static const routeName = '/Profile1';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile1> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: marginEdge.min,right: marginEdge.min),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new TopSection(),
              new Padding(
                padding: const EdgeInsets.all(24.0),
                child:  BuildBody(),
              ),
              new BottomSection(),
            ],
          ),
        ),
      ),
    );
  }
}


//==============================================================================


//====================
// Build Top Profile
//====================
class TopSection extends StatelessWidget {


  Widget _imageBackground(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    //====================
    // Background Image
    //====================
    return BuildImageCover(
      image: Image.network(
        'https://i.picsum.photos/id/1022/300/300.jpg',
        width: width,
        height: 250.0,
        fit: BoxFit.cover,
      ),
      color: Colors.black38,
    );
  }

  //===============
  // Profile Image
  //===============
  Widget _buildImageProfile() {
    return CircleAvatar(
      backgroundImage: new NetworkImage('https://i.picsum.photos/id/1005/200/200.jpg'),
      radius: 50.0,
    );
  }

  //============
  // Some info
  //============
  Widget _buildInfo(BuildContext context) {


    return new Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('Flutter UI ', style: TextStyle(fontSize: 16)),
          new Text(
            ' | ',
          ),
          new Text('UI Profile'),
        ],
      ),
    );
  }

  //=============================
  // Add Friend & Follow Buttons
  //=============================
  Widget _buildActionButtons(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        left: 16.0,
        right: 16.0,
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ClipRRect(
            borderRadius: new BorderRadius.circular(30.0),
            child: new MaterialButton(
              minWidth: 140.0,
              color: Colors.white10,
              textColor: Theme.of(context).primaryColor,
              onPressed: () {},
              child: new Text('Add Friend',style: TextStyle(color: Theme.of(context).secondaryHeaderColor)),
            ),
          ),
          ClipRRect(
            borderRadius: new BorderRadius.circular(30.0),
            child: new MaterialButton(
              minWidth: 140.0,
              color: Colors.white10,
              textColor: Theme.of(context).primaryColor,
              onPressed: () {},
              child: new Text('Follow',style: TextStyle(color: Theme.of(context).secondaryHeaderColor)),
            ),
          ),
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {


    return  Stack(
      children: <Widget>[
        _imageBackground(context),
         Align(
          alignment: FractionalOffset.bottomCenter,
          heightFactor: 1.4,
          child: new Column(
            children: <Widget>[
              _buildImageProfile(),
              _buildInfo(context),
              _buildActionButtons(context),
            ],
          ),
        ),
      ],
    );
  }
}


//==============================================================================


//====================
// Build body Profile
//====================
class BuildBody extends StatelessWidget {


  //=================
  // Address Info
  //=================
  Widget _buildCity(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Icon(
          Icons.flag,
          color: Theme.of(context).accentColor,
          size: 16.0,
        ),
        new Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: new Text(
            'Canada',
          ),
        ),
      ],
    );
  }

  Widget _createIconCircle(BuildContext context,IconData iconData, Color color) {
    return new Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: new CircleAvatar(
        backgroundColor: color,
        child: new Icon(
          iconData,
          color: Theme.of(context).accentColor,
          size: 16.0,
        ),
        radius: 16.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {


    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text(
          'simply random text',
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: _buildCity(context),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: new Text(
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. ',
          ),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: new Row(
            children: <Widget>[
              _createIconCircle(context,Icons.laptop, Theme.of(context).secondaryHeaderColor),
              _createIconCircle(context,Icons.info, Theme.of(context).secondaryHeaderColor),
              _createIconCircle(context,Icons.person_pin, Theme.of(context).secondaryHeaderColor),
            ],
          ),
        ),
      ],
    );
  }
}


//==============================================================================


//=======================
// Build bottom Profile
//=======================
class BottomSection extends StatefulWidget {

  @override
  _BottomSectionState createState() => new _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> with TickerProviderStateMixin {
  List<Tab> _tabs;
  List<Widget> _pages;
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _tabs = [
      new Tab(text: 'About'),
      new Tab(text: 'Skills'),
      new Tab(text: 'Gallery'),


    ];
    _pages = [
      About(),
      Skills(),
      Gallery(),


    ];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[
          new TabBar(
            controller: _controller,
            tabs: _tabs,
            labelColor: Theme.of(context).accentColor,
            indicatorColor: Theme.of(context).accentColor,
          ),
          new SizedBox.fromSize(
            size: const Size.fromHeight(300.0),
            child: new TabBarView(
              controller: _controller,
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }
}


//==============================================================================


//===================
// Build Gallery Tab
//===================
class Gallery extends StatelessWidget {
  List<Widget> _buildItems() {
    var items = <Widget>[];

    for (var i = 1; i <= 6; i++) {
      var image = new Image.network(
        'https://i.picsum.photos/id/$i/200/200.jpg',
        width: 200.0,
        height: 200.0,
      );

      items.add(image);
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    var delegate = new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
    );

    return new GridView(
      padding: const EdgeInsets.only(top: 16.0),
      gridDelegate: delegate,
      children: _buildItems(),
    );
  }
}


//==============================================================================


//===================
// Build Skills Tab
//===================
class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            LinearPercentIndicator(
              width: 170.0,
              animation: true,
              animationDuration: 1000,
              lineHeight: 16.0,
              leading:  Container(width:60,child: Text("Flutter")),
              percent: 0.80,
              linearStrokeCap: LinearStrokeCap.butt,
              progressColor: Colors.green,
            ),
            LinearPercentIndicator(
              width: 170.0,
              animation: true,
              animationDuration: 1000,
              lineHeight: 16.0,
              leading: Container(width:60,child: Text("Dart")),
              percent: 0.95,
              linearStrokeCap: LinearStrokeCap.butt,
              progressColor: Colors.green,
            ),
            LinearPercentIndicator(
              width: 170.0,
              animation: true,
              animationDuration: 1000,
              lineHeight: 16.0,
              leading: Container(width:60,child: Text("Java")),
              percent: 0.75,
              linearStrokeCap: LinearStrokeCap.butt,
              progressColor: Colors.green,
            ),
            LinearPercentIndicator(
              width: 170.0,
              animation: true,
              animationDuration: 1000,
              lineHeight: 16.0,
              leading: Container(width:60,child: Text("C++")),
              percent: 0.60,
              linearStrokeCap: LinearStrokeCap.butt,
              progressColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}


//==============================================================================


//===================
// Build About Tab
//===================
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Center(
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(bottom: 25.0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 25.0),
                  child: Text(
                      'E-Mail',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 6.0),
                  child:  Text('Email@gmail.com')),

              Padding(
                  padding: EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 25.0),
                  child: Text(
                      'Phone Number',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 6.0),
                  child:  Text('+1 XXX XXX XXXX')),

              Padding(
                  padding: EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 25.0),
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: new Text(
                            'Country',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Container(
                          child: new Text(
                            'City',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        flex: 2,
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      left: 25.0, right: 25.0, top: 2.0),
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: new Text('Canada'),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Container(
                          child: new Text('Toronto'),
                        ),
                        flex: 2,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}


//==============================================================================


//===================
// Build Image Cover
//===================
class BuildImageCover extends StatelessWidget {
  BuildImageCover({this.image,this.color});

  final Image image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return new ClipPath(
      clipper: CustomClipperWidget(),
      child: new DecoratedBox(
        position: DecorationPosition.foreground,
        decoration: new BoxDecoration(color: color),
        child: image,
      ),
    );
  }
}


//==============================================================================


//=============================
// Class For Clip Image Cover
//=============================
class CustomClipperWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height - 50.0);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
