import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:math' as math;


Color _color=Colors.black;

class HeaderArticle extends StatefulWidget {
  static const routeName = '/HeaderArticle';
  @override
  _HeaderArticleState createState() => _HeaderArticleState();
}

class _HeaderArticleState extends State<HeaderArticle> {
  final controller = ScrollController();
  double appBarHeight = 200.0;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        controller: controller,
        slivers:<Widget>[
          //=================
          //  Section Top
          //=================
          SliverAppBar(
            pinned: false,
            expandedHeight: appBarHeight,
            floating: true,
            automaticallyImplyLeading: false,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double percent = ((constraints.maxHeight - kToolbarHeight) *
                    100 /
                    (appBarHeight - kToolbarHeight));
                return Stack(
                  children: <Widget>[


                    //==================
                    //  Image
                    //==================
                    Image.network(
                      "https://i.picsum.photos/id/277/300/300.jpg",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),


                    Container(
                      height: kToolbarHeight,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomPaint(
                                size: Size.fromHeight(kToolbarHeight),
                                painter: CircleWhite(100 - percent),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //=================================
                    //  Personal info & Text and Icon
                    //=================================
                    Container(

                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Lorem Ipsum",
                                style: TextStyle(fontSize:26,color:_color,fontWeight: FontWeight.bold ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                controller.animateTo(-appBarHeight,
                                    duration: Duration(seconds: 4),
                                    curve: Curves.fastOutSlowIn);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                margin: EdgeInsets.only(left:12,right: 12),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: _color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          //=================
          //  Section Bottom
          //=================
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                AnnotatedRegion<SystemUiOverlayStyle>(
                  value: SystemUiOverlayStyle.dark,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 35),

                        //=================
                        // personal info
                        //=================
                        Row(
                          children: <Widget>[
                            Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(70),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(70),
                                  child: Image.network('https://i.picsum.photos/id/177/100/100.jpg',width: 70,height:70,fit: BoxFit.fill,),
                                )
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10,right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Dr. Jhone Banel',style:TextStyle(fontSize:14,color: _color)),
                                  Text('Public Health',style:TextStyle(fontSize:14,color: _color)),

                                ],
                              ),
                            )
                          ],
                        ),
                        //=============
                        //   title
                        //=============
                        Wrap(
                          children: <Widget>[
                            Text('What is Lorem Ipsum?',style: TextStyle(fontSize:26,color:_color,fontWeight: FontWeight.bold ))
                          ],
                        ),


                        SizedBox(height: 20),
                        //=============
                        //   Subtitle
                        //=============
                        _buildDescription('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),




                        SizedBox(height: 20),


                        //=============
                        //   title 1
                        //=============

                        _buildTitle('Where does it come from?'),


                        SizedBox(height: 20),
                        //====================
                        //   Description 1
                        //====================

                        _buildDescription('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),



                        SizedBox(height: 20),



                      ],
                    ),
                  ),
                )
              ]))

        ],
      ),
    );
  }


  _buildTitle (String text){
    return Wrap(
      children: <Widget>[
        Text('$text',style: TextStyle(color:_color,fontStyle: FontStyle.italic,fontSize: 20))
      ],
    );
  }

  _buildDescription (String text){
    return Wrap(
      children: <Widget>[
        Text('$text',style: TextStyle(color: _color,fontSize: 16))
      ],
    );
  }
}



class CircleWhite extends CustomPainter {
  double overallPercent;

  CircleWhite(this.overallPercent);

  @override
  void paint(Canvas canvas, Size size) {
    double circleSize = 25.0;
    double angle = math.pi / 180.0 * ((overallPercent * 360 / 100));
    double line = overallPercent * (size.width - circleSize) / 100;
    final paint = Paint()
      ..color = _color
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;
    final path = Path();
    if (overallPercent < 50) {
      path.addPolygon([
        Offset(0.0, size.height),
        Offset((line * 2), size.height),
      ], false);
    }
    if (overallPercent > 50) {
      path.arcTo(
          Rect.fromLTWH(
              size.width - (circleSize * 2), 0.0, circleSize * 2, size.height),
          math.pi / 2,
          -angle * 2,
          false);
      if (overallPercent < 100) {
        path.addPolygon([
          Offset(overallPercent * (size.width - circleSize) / 100, size.height),
          Offset(size.width - circleSize, size.height),
        ], false);
      }
      if (overallPercent == 100) {
        path.addArc(
            Rect.fromLTWH(size.width - (circleSize * 2), 0.0, circleSize * 2,
                size.height),
            math.pi / 2,
            math.pi * 2);
      }
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

