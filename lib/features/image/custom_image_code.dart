import 'package:flutter/material.dart';

class ImageCustom extends StatefulWidget {
  static const routeName = '/ImageCustom';
  @override
  _ImageCustomState createState() => _ImageCustomState();
}

class _ImageCustomState extends State<ImageCustom> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(left: 18,right: 18),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 32.0),

              //==================================================================

              //========================
              //   Image with shadow
              //========================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  //========================
                  //   Image with shadow
                  //========================
                  Container(
                    constraints: BoxConstraints(maxWidth: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Text('Image with shadow',style: TextStyle(fontSize: 18,color: Colors.white)),

                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset('assets/images/wood_bk.jpg',width: 80,height: 80,fit: BoxFit.fill,))

                          ),
                        )


                      ],
                    ),
                  ),


                  //================================
                  //   Circular image with shadow
                  //================================
                  Container(
                    constraints: BoxConstraints(maxWidth: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Text('Circular image with shadow',style:TextStyle(fontSize: 18,color: Colors.white)),

                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(80),
                                  child: Image.asset('assets/images/wood_bk.jpg',width: 80,height: 80,fit: BoxFit.fill,))

                          ),
                        )


                      ],
                    ),
                  ),
                ],

              ),

              //==================================================================
              const SizedBox(height: 32.0),

              //==================================================================


              //================================
              //   Image with Text
              //================================
              Container(
                constraints: BoxConstraints(maxWidth: 250),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text('Image with Text',style: TextStyle(fontSize: 18,color: Colors.white)),

                    Container(
                      width: 200,
                      height: 80,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                            image: new AssetImage('assets/images/wood_bk.jpg'),
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.45), BlendMode.lighten),
                            fit: BoxFit.cover),
                      ),
                      child: new SizedBox.expand(
                        child: Container(
                          alignment: Alignment.center,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: new Text(
                                  'Laptop',
                                  style: TextStyle(fontSize: 18,color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Ram : 8',
                                      style: TextStyle(fontSize: 11,color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                                      child: Container(
                                        color: Colors.white,
                                        height: 10,
                                        width: 1.0,
                                      ),
                                    ),
                                    Text(
                                      'Hard : 1T',
                                      style: TextStyle(fontSize: 11,color: Colors.white),
                                    ),


                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),

              //==================================================================

              const SizedBox(height: 32.0),

              //==================================================================



              //================================
              //   Image with Text
              //================================
              Container(
                constraints: BoxConstraints(maxWidth: 250),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text('Image with Text',style: TextStyle(fontSize: 18,color: Colors.white)),

                    Container(
                      width: 80,
                      height: 80,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                            image: new AssetImage('assets/images/wood_bk.jpg'),
                            colorFilter: new ColorFilter.mode(
                                Colors.blue.withOpacity(0.75),
                                BlendMode.darken),
                            fit: BoxFit.cover),
                      ),
                      child: new SizedBox.expand(
                        child: Container(
                          padding: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Flexible(
                                  child: new Text(
                                    'Business',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(fontSize: 18,color: Colors.white),
                                  )),
                              Text(
                                '16 Courses',
                                style: TextStyle(fontSize: 11,color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),


              const SizedBox(height: 64.0),
            ],
          ),
        ),
      ),
    );
  }
}