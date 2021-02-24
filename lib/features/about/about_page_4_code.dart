import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share/share.dart';

class AboutDialog4 extends StatefulWidget {
  static const routeName = '/AboutDialog4';
  @override
  State<StatefulWidget> createState() => _AboutDialogState();
}

class _AboutDialogState extends State<AboutDialog4> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 750));
    scaleAnimation = CurvedAnimation(parent: controller, curve: Curves.easeOutBack);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: (){
              showDialog(
                context: context,
                builder: (_) => _showDialogAbout(),
              );
            },
            child: Container(
              alignment: AlignmentDirectional.center,
              color: Colors.yellow,
              width: 200,
              height: 40,
              child: Text('Show About Doalog'),
            ),
          ),
        ),
      ),
    );
  }

  Widget _showDialogAbout(){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: ScaleTransition(
            scale: scaleAnimation,
            child: Container(

                width: ScreenUtil().setWidth(284),
                height: ScreenUtil().setHeight(430),
                margin: EdgeInsets.all(24),
                padding: EdgeInsets.all(16),
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ScreenUtil().setWidth(10)))),
                child: Stack(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        ),


                        //=====================
                        //Completed quiz text
                        //=====================
                        Container(
                          margin: EdgeInsets.only(left:5,right:5),
                          child: Text(
                              "version 1.0",
                              style: TextStyle(color: Colors.grey,fontSize: 14)
                          ),
                        ),


                        Column(
                          children: <Widget>[
                            Text('FlutterX UI is an amazing application that offers you multiple interfaces using flutter with its source code',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.black)),
                          ],
                        ),

                        //========================
                        //Share the result button
                        //========================
                        Container(
                            child:  ButtonTheme(
                                height:ScreenUtil().setHeight(50),
                                minWidth: ScreenUtil().setWidth(230),
                                child: RaisedButton(
                                  color: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  splashColor: Colors.white.withAlpha(40),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                          'Share App',
                                          textAlign: TextAlign.center
                                      ),
                                      SizedBox(width:ScreenUtil().setWidth(10)),
                                      Icon(Icons.share),
                                    ],
                                  ),

                                  //===================================================
                                  //Perform a function when you press the share button
                                  //===================================================
                                  onPressed: () {
                                    setState(() {
                                      Share.share('https://google.com',subject: 'FlutterX UI', );
                                    });
                                  },
                                ))
                        ),
                      ],
                    ),

                    //===========================================
                    //The result interface is closed at the top.
                    //===========================================
                    Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: IconButton(
                          icon:  Icon(Icons.clear,color: Colors.black,),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ))
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}