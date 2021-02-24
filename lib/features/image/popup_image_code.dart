import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagePopup extends StatefulWidget {
  static const routeName = '/ImagePopup';
  @override
  _ImagePopupState createState() => _ImagePopupState();
}

class _ImagePopupState extends State<ImagePopup> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 32.0),

              //==================================================================

              //===============================
              //         Image Popup1
              //===============================
              Container(
                constraints: BoxConstraints(maxWidth: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Click on image',
                        style: TextStyle(fontSize: 18,color: Colors.white)),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            opaque: false,
                            pageBuilder: (BuildContext context, _, __) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  color: Colors.black.withOpacity(0.9),
                                  child: Center(
                                    child: Hero(
                                      tag: 'imageTag1',
                                      child: GestureDetector(
                                        child: CachedNetworkImage(
                                          imageUrl:
                                          'https://i.picsum.photos/id/99/200/200.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'imageTag1',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(110),
                          child: Container(
                              width: 110,
                              height: 110,
                              child: CachedNetworkImage(
                                imageUrl:
                                'https://i.picsum.photos/id/99/200/200.jpg',
                                fit: BoxFit.cover,
                                height: 110,
                                width: 110,
                                placeholder: (context, _) {
                                  return Container(
                                    color: Colors.grey.shade300,
                                  );
                                },
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //==================================================================

              const SizedBox(height: 64.0),

              //==================================================================


              //===============================
              //         Image Popup2
              //===============================
              Container(
                constraints: BoxConstraints(maxWidth: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Click on image',
                        style: TextStyle(fontSize: 18,color: Colors.white)),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            opaque: false,
                            pageBuilder: (BuildContext context, _, __) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  color: Colors.black.withOpacity(0.9),
                                  child: Center(
                                    child: Hero(
                                      tag: 'imageTag2',
                                      child: GestureDetector(
                                        child: CachedNetworkImage(
                                          imageUrl:
                                          'https://i.picsum.photos/id/45/200/200.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'imageTag2',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                              width: 110,
                              height: 110,
                              child: CachedNetworkImage(
                                imageUrl:
                                'https://i.picsum.photos/id/45/200/200.jpg',
                                fit: BoxFit.cover,
                                height: 110,
                                width: 110,
                                placeholder: (context, _) {
                                  return Container(
                                    color: Colors.grey.shade300,
                                  );
                                },
                              )),
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