import 'package:flutter/material.dart';

class TextProperty extends StatefulWidget {
  static const routeName = '/TextProperty';
  @override
  _TextPropertyState createState() => _TextPropertyState();
}

class _TextPropertyState extends State<TextProperty> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),


              //====================
              //   Basic Text
              //====================
              Container(
                margin: EdgeInsets.all( 8.0),
                child: Text(" Text => Basic  ",
                    style: TextStyle(fontSize: 16.0, color: Colors.black)),
              ),

              //====================
              //   Text Color
              //====================
              Container(
                margin: EdgeInsets.all( 8.0),
                child: Text(
                  "  Text Property => Color  ",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),

              Container(

                  margin: EdgeInsets.all( 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      //====================
                      //   Text Color1
                      //====================
                      Text(" text 1 ",
                          style: TextStyle(color: Colors.yellow, fontSize: 16.0)),

                      //====================
                      //   Text Color2
                      //====================
                      Text(" text 2 ",
                          style: TextStyle(color: Colors.pink, fontSize: 16.0)),

                      //====================
                      //   Text Color3
                      //====================
                      Text(" text 3 ",
                          style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 16.0)),

                      //========================
                      //   Text Color4  Custom
                      //========================
                      Text(" text 4 (Custom) ",
                          style: TextStyle(color: Color(0xFFB78093), fontSize: 16.0)),
                    ],
                  )
              ),


              //================
              //   Text Size
              //================
              Container(
                margin: EdgeInsets.all( 8.0),
                child: Text(
                  "  Text Property => Size  ",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[

                  Text("12.0",
                      style: TextStyle(color: Colors.deepOrange, fontSize: 12.0)),

                  Text("14.0",
                      style: TextStyle(color: Colors.deepOrange, fontSize: 14.0)),

                  Text("16.0",
                      style: TextStyle(color:  Colors.deepOrange, fontSize: 16.0)),

                  Text("18.0",
                      style: TextStyle(color:  Colors.deepOrange, fontSize: 18.0)),

                  Text("20.0",
                      style: TextStyle(color:  Colors.deepOrange, fontSize: 20.0)),

                  Text("22.0",
                      style: TextStyle(color:  Colors.deepOrange, fontSize: 22.0)),

                  Text("24.0",
                      style: TextStyle(color:  Colors.deepOrange, fontSize: 24.0)),

                ],
              ),

              //==================
              //   Text FontStyle
              //==================
              Container(
                margin: EdgeInsets.all( 8.0),
                child: Text(
                  "  Text Property => FontStyle  ",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),

              Wrap(
                verticalDirection: VerticalDirection.down,
                alignment: WrapAlignment.start,
                children: <Widget>[

                  //  Normal
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Normal",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontStyle: FontStyle.normal)),
                  ),

                  //  Bold
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Bold",
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                  ),

                  //  Italic
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Italic",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontStyle: FontStyle.italic)),
                  ),

                  //  LineThrough
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("LineThrough",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            decoration: TextDecoration.lineThrough)),
                  ),

                  //  OverLine
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("OverLine",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            decoration: TextDecoration.overline)),
                  ),

                  //  UnderLine
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("UnderLine",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            decoration: TextDecoration.underline)),

                  ),
                ],
              ),


              //====================
              //   Text FontFamily
              //====================
              Container(
                margin: EdgeInsets.all( 8.0),
                child: Text(
                  " Text Property => FontFamily",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),

              Row(
                children: <Widget>[

                  //  Raleway
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Raleway",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontFamily: 'Raleway Regular')),
                  ),

                  //   Roboto
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Roboto",
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                        )),
                  ),

                  // Bahij
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Bahij",
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Bahij Janna',
                        )),
                  ),
                ],
              ),


              //====================
              //   Text Overflow
              //====================
              Container(
                margin: EdgeInsets.all( 8.0),
                child: Text(
                  "  Text Property => Overflow ",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),

              Wrap(
                verticalDirection: VerticalDirection.down,
                alignment: WrapAlignment.start,
                children: <Widget>[

                  //  TextOverflow.clip
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
                    child: Text(
                        "- ( long Text with TextOverflow.clip property ) Create beautiful apps faster with Flutter’s collection of visual, structural, platform, and interactive widgets.",
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        )),
                  ),

                  //  TextOverflow.ellipsis
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
                    child: Text(
                        "- ( long Text with TextOverflow.ellipsis property ) Create beautiful apps faster with Flutter’s collection of visual, structural, platform, and interactive widgets.",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        )),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
                    child: Text(
                        "- ( long Text with TextOverflow.fade property ) Create beautiful apps faster with Flutter’s collection of visual, structural, platform, and interactive widgets.",
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        )),
                  ),
                ],
              ),

              //====================
              //   Text TextSpan
              //====================
              Container(
                margin: EdgeInsets.all( 8.0),
                child: Text(
                  "  Text Property => TextSpan ",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
              Text.rich(
                TextSpan(
                  text: 'I like', // default text style
                  children: <TextSpan>[
                    TextSpan(
                        text: ' flutter  ',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20.0,
                            fontFamily: 'Roboto')),
                    TextSpan(
                        text: 'it is really',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0)),
                    TextSpan(
                      text: ' wonderful' ,
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12.0))

                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

}