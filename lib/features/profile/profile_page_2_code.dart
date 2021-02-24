import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class Profile2 extends StatefulWidget {
  static const routeName = '/Profile2';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                //=========================================
                // Profile Image With Camera Icon & Name
                //=========================================
                Container(
                  height: 250.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Stack(
                            fit: StackFit.loose,
                            alignment: AlignmentDirectional.center,
                            children: <Widget>[
                              //================
                              //Profile Image
                              //================
                              _buildProfileImage(),

                              //=============
                              //Camera Icon
                              //=============
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 100.0, right: 90.0),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        radius: 20.0,
                                        child: new Icon(
                                          Icons.camera_alt,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      )
                                    ],
                                  )),
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Text('Lorem Ipsum',style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  ),
                ),


                Divider(height: 5,color: Colors.grey,),
                //=============
                //     Info
                //=============
                Container(
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


                //===================
                //Bottom Section
                //===================
                BottomSection()


              ],
            ),
          ],
        ),
      ),
    );
  }




  _buildProfileImage() {
    return Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 4, color: Colors.grey),
          image: DecorationImage(
            image: NetworkImage('https://i.picsum.photos/id/548/200/200.jpg'),
            fit: BoxFit.cover,
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
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
      new Tab(text: 'Gallery'),
      new Tab(text: 'Skills'),
      new Tab(text: 'About'),
    ];
    _pages = [
      Gallery(),
      Skills(),
      About(),
    ];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
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

    for (var i = 900; i <= 914; i++) {
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


    var width =MediaQuery.of(context).size.width;
    return new Center(
      child: Card(
        child: Container(
          width: width,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.network('https://i.picsum.photos/id/100/200/200.jpg',width: width,height:150,fit: BoxFit.fill),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('What is Lorem Ipsum?',overflow: TextOverflow.ellipsis,),
              )
            ],
          ),
        ),
      ),
    );
  }
}


//==============================================================================
