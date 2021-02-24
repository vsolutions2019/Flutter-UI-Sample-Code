import 'package:flutter/material.dart';



class NoConnectionImage extends StatefulWidget {
  static const routeName = '/NoConnectionImage';
  @override
  _NoConnectionImageState createState() => _NoConnectionImageState();
}

class _NoConnectionImageState extends State<NoConnectionImage> {


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

   double width= MediaQuery.of(context).size.width;
       double height= MediaQuery.of(context).size.height-150;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.white),
        backgroundColor: Colors.red,
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
          width: width,
          height: height,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Image.asset('assets/images/no_connection.png',width: width*.7,height: height*.4,),

              Text('Whoops!',style: TextStyle(color:Colors.redAccent,fontSize: 40,fontWeight:FontWeight.w500 )),
              Text('No internet connections found \n Check your connection or try again',style: TextStyle(fontSize:18,color: Colors.redAccent,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text(
                    "RETRY",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
