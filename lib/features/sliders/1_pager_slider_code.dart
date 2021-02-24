import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterxui/consts.dart';
import 'package:flutterxui/res/utils.dart';


class SlidersPage_1 extends StatelessWidget {

  static const routeName = '/SlidersPage_1';
  final List<String> images = Constants.images;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      /// ---------------------------------------------------------------------------
      /// Build scrollable content with SingleChildScrollView
      /// ---------------------------------------------------------------------------
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              color: utils.getThem().progress4,
              padding: EdgeInsets.all(16.0),

              /// -----------------------------------
              /// First Swiper
              /// -----------------------------------
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      color: Colors.blueGrey,
                      child: Image.network(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                itemCount: 10,
                viewportFraction: 0.8,
                scale: 0.9,
                pagination: SwiperPagination(),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 300,
              color: utils.getThem().progress4,
              padding: EdgeInsets.all(16.0),

              /// -----------------------------------
              /// Second Swiper
              /// -----------------------------------
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      color: Colors.blueGrey,
                      child: Image.network(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                itemWidth: 300,
                itemCount: 10,
                layout: SwiperLayout.STACK,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 340,
              color: utils.getThem().progress4,
              padding: EdgeInsets.all(16.0),

              /// -----------------------------------
              /// Third Swiper
              /// -----------------------------------
              child: Swiper(
                fade: 0.0,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)),
                            color: Colors.blueGrey,
                            image: DecorationImage(
                                image: NetworkImage(
                                  images[index],
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0))),
                          child: ListTile(
                            subtitle: Text("amazing application "),
                            title: Text("FlutterX UI"),
                          ))
                    ],
                  );
                },
                itemCount: 10,
                scale: 0.9,
                pagination: SwiperPagination(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
