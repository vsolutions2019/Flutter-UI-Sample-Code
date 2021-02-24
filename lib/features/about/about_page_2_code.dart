import 'package:flutter/material.dart';

class About2 extends StatelessWidget {
  static const routeName = '/About2';
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
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child:  Container(
            width: width,
            height: height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('FlutterX UI',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400)),
                  Container(
                    width: 150,
                    height: 2,
                    color: Colors.orangeAccent,
                  ),

                  SizedBox(height: 30),


                  Text('Version',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
                  Text('1.0.1.1',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400)),

                  SizedBox(height: 30),


                  Text('Last Update',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
                  Text('March 2020',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400)),

                  SizedBox(height: 30),



                  Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400)),


                  SizedBox(height: 30),

                  Text('Term of services',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400)),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}