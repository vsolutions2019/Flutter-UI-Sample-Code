import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart' show kTransparentImage;

class Images extends StatefulWidget {
  static const routeName = '/Images';
  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(left: 16,right: 16),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 32.0),

              //==================================================================

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  //===========================
                  //        Asset Image
                  //===========================
                  Container(
                    constraints: BoxConstraints(maxWidth: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Text('Asset Image',style: TextStyle(fontSize: 18,color: Colors.white)),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Image.asset('assets/images/wood_bk.jpg',width: 80,height: 80,fit: BoxFit.fill,),
                        )

                      ],
                    ),
                  ),

                  //===========================
                  //        Network Image
                  //===========================
                  Container(
                    constraints: BoxConstraints(maxWidth: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Text('Network Image',style: TextStyle(fontSize: 18,color: Colors.white)),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Image.network('https://i.picsum.photos/id/10/200/200.jpg',width: 80,height: 80,fit: BoxFit.fill,),
                        )

                      ],
                    ),
                  ),
                ],

              ),

              //==================================================================

              const SizedBox(height: 32.0),

              //==================================================================

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[


                  //===========================
                  //   Image with Palceholder
                  //===========================
                  Container(
                    constraints: BoxConstraints(maxWidth: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Text('Image with Palceholder',style: TextStyle(fontSize: 18,color: Colors.white)),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: FadeInImage.memoryNetwork(
                            placeholder:kTransparentImage ,
                            image: 'https://i.picsum.photos/id/9/200/200.jpg',width: 80,height: 80,fit: BoxFit.fill,),
                        )

                      ],
                    ),
                  ),


                  //===========================
                  //   Cached Image
                  //===========================
                  Container(
                    constraints: BoxConstraints(maxWidth: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Text('Cached Image',style: TextStyle(fontSize: 18,color: Colors.white)),
                        Padding(
                            padding: EdgeInsets.all(8),
                            child: CachedNetworkImage(
                              imageUrl: 'https://i.picsum.photos/id/99/200/200.jpg',
                              placeholder: (context,url) =>Center(child: CircularProgressIndicator()),
                              errorWidget: (context,url,error)=> Icon(Icons.error),
                            )
                        )

                      ],
                    ),
                  ),
                ],

              ),

              //==================================================================

              const SizedBox(height: 32.0),

              //==================================================================

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  //===========================
                  //   Image with ColorFilter
                  //===========================
                  Container(
                    constraints: BoxConstraints(maxWidth: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Text('Image with ColorFilter',style: TextStyle(fontSize: 18,color: Colors.white)),
                        Container(
                          width: 80,
                          height: 80,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage('assets/images/wood_bk.jpg'),
                                colorFilter: new ColorFilter.mode(
                                    Colors.pink.withOpacity(0.3), BlendMode.darken),
                                fit: BoxFit.cover),
                          ),
                        )

                      ],
                    ),
                  ),


                  //===========================
                  //   Image with ColorFilter
                  //===========================
                  Container(
                    constraints: BoxConstraints(maxWidth:100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Text('Image with ColorFilter',style: TextStyle(fontSize: 18,color: Colors.white)),
                        Container(
                          width: 80,
                          height: 80,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage('assets/images/wood_bk.jpg'),
                                colorFilter: new ColorFilter.mode(
                                    Colors.pink.withOpacity(0.3), BlendMode.difference),
                                fit: BoxFit.cover),
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  //===========================
                  //       Circular image
                  //===========================
                  Container(
                    constraints: BoxConstraints(maxWidth: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Text('Circular image',style: TextStyle(fontSize: 18,color: Colors.white)),


                        Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(75),
                            ),
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular( 75),
                              child: Image.asset('assets/images/wood_bk.jpg',width: 75,height:75,fit: BoxFit.fill,),
                            )
                        ),

                      ],
                    ),
                  ),


                  //===============================
                  //   Circular image with border
                  //===============================
                  Container(
                    constraints: BoxConstraints(maxWidth: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Text('Circular image with border',style: TextStyle(fontSize: 18,color: Colors.white)),
                        Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(75),
                              border: Border.all(
                                  width: 4.0,
                                  color: Colors.white
                              ),
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular( 75),
                                child: Image.asset('assets/images/wood_bk.jpg',width: 75,height: 75,fit: BoxFit.fill,))

                        ),

                      ],
                    ),
                  ),
                ],

              ),


              const SizedBox(height: 64.0),
            ],
          ),
        ),
      ),
    );
  }
}