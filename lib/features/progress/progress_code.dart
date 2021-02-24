// This class uses Spinkit package
// Link to it :  https://pub.dev/packages/flutter_spinkit

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Progress extends StatefulWidget {
  static const routeName = '/Progress';
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {



  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(height: 20,),
              //=======================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SpinKitRotatingCircle(color: Colors.blue),
                   SpinKitRotatingPlain(color: Colors.blue),
                   SpinKitChasingDots(color: Colors.blue),
                ],
              ),
              SizedBox(height: 20,),

              //=======================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SpinKitPumpingHeart(color: Colors.blue),
                   SpinKitPulse(color: Colors.blue),
                   SpinKitDoubleBounce(color: Colors.blue),
                ],
              ),
              SizedBox(height: 20,),

              //=======================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SpinKitWave(color: Colors.blue, type: SpinKitWaveType.start),
                   SpinKitWave(color: Colors.blue, type: SpinKitWaveType.center),
                   SpinKitWave(color: Colors.blue, type: SpinKitWaveType.end),
                ],
              ),

              SizedBox(height: 20,),
              //=======================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SpinKitThreeBounce(color: Colors.blue),
                   SpinKitWanderingCubes(color: Colors.blue),
                   SpinKitWanderingCubes(color: Colors.blue, shape: BoxShape.circle),
                ],
              ),

              SizedBox(height: 20,),
              //=======================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SpinKitCircle(color: Colors.blue),
                   SpinKitFadingFour(color: Colors.blue),
                   SpinKitFadingFour(color: Colors.blue, shape: BoxShape.rectangle),
                ],
              ),

              SizedBox(height: 20,),
              //=======================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SpinKitFadingCube(color: Colors.blue),
                   SpinKitCubeGrid(size: 51.0, color: Colors.blue),
                   SpinKitFoldingCube(color: Colors.blue),
                ],
              ),

              SizedBox(height: 20,),
              //=======================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SpinKitRing(color: Colors.blue),
                   SpinKitDualRing(color: Colors.blue),
                   SpinKitRipple(color: Colors.blue),
                ],
              ),

              SizedBox(height: 20,),
              //=======================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SpinKitFadingGrid(color: Colors.blue),
                   SpinKitFadingGrid(color: Colors.blue, shape: BoxShape.rectangle),
                   SpinKitSquareCircle(color: Colors.blue),
                ],
              ),

              SizedBox(height: 20,),
              //=======================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SpinKitSpinningCircle(color: Colors.blue),
                   SpinKitSpinningCircle(color: Colors.blue, shape: BoxShape.rectangle),
                   SpinKitFadingCircle(color: Colors.blue),
                ],
              ),

              SizedBox(height: 20,),
              //=======================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SpinKitHourGlass(color: Colors.blue),
                   SpinKitPouringHourglass(color: Colors.blue),
                ],
              ),

              SizedBox(height: 20,),
              //=======================================================
              SpinKitFadingCircle(
                itemBuilder: (_, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.blue : Colors.yellow,
                    ),
                  );
                },
                size: 120.0,
              ),

               SizedBox(height: 64.0),
            ],
          ),
        ),
      ),
    );
  }
}