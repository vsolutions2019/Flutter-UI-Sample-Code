import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class NoItemSearch extends StatefulWidget {
  static const routeName = '/NoItemSearch';
  @override
  _NoItemSearchState createState() => _NoItemSearchState();
}

class _NoItemSearchState extends State<NoItemSearch> {


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.menu),
        title: Text(
            'Home',
            style: TextStyle(fontSize:24,color: Colors.white)
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.all(5.0),
            onPressed: (){},
            icon: Icon(Icons.search,color: Colors.white),
          ),
          IconButton(
            padding: EdgeInsets.all(5.0),
            onPressed: (){},
            icon: Icon(Icons.more_vert,color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                  MaterialCommunityIcons.file_search,
                  color: Colors.orangeAccent,
                size: 100,
              ),
              Text('No result',style: TextStyle(fontSize: 28,color: Colors.orange)),
              Text('Try a more general \n keyword',style: TextStyle(fontSize:18,color: Colors.orangeAccent,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}
