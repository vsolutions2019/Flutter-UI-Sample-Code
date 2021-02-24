import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

// This class uses Like Button Package
// Link to it :  https://pub.dev/packages/like_button

class LikeButtonPage extends StatefulWidget {
  static const routeName = '/LikeButtonPage';
  @override
  _LikeButtonPageState createState() => _LikeButtonPageState();
}

class _LikeButtonPageState extends State<LikeButtonPage> {
  final int likeCount = 999;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Material(
          child: Column(children: <Widget>[
            Expanded(
              child: LayoutBuilder(
                builder: (c, data) {
                  final crossAxisCount = data.maxWidth ~/ 160.0 + 1;
                  return GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount),
                    children: <Widget>[
                      LikeButton(
                        size: 20,
                        likeCount: likeCount,
                        countBuilder: (int count, bool isLiked, String text) {
                          var color = isLiked ? Colors.pinkAccent : Colors.grey;
                          Widget result;
                          if (count == 0) {
                            result = Text(
                              "love",
                              style: TextStyle(color: color),
                            );
                          } else
                            result = Text(
                              count >= 1000
                                  ? (count / 1000.0).toStringAsFixed(1) + "k"
                                  : text,
                              style: TextStyle(color: color),
                            );
                          return result;
                        },
                        likeCountAnimationType: likeCount < 1000
                            ? LikeCountAnimationType.part
                            : LikeCountAnimationType.none,
                        likeCountPadding: EdgeInsets.only(left: 15.0),
                        onTap: onLikeButtonTapped,
                      ),
                      LikeButton(
                        size: 20,
                        circleColor: CircleColor(
                            start: Color(0xff00ddff), end: Color(0xff0099cc)),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Color(0xff33b5e5),
                          dotSecondaryColor: Color(0xff0099cc),
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.home,
                            color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
                            size: 20,
                          );
                        },
                        likeCount: 665,
                        countBuilder: (int count, bool isLiked, String text) {
                          var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                          Widget result;
                          if (count == 0) {
                            result = Text(
                              "love",
                              style: TextStyle(color: color),
                            );
                          } else
                            result = Text(
                              text,
                              style: TextStyle(color: color),
                            );
                          return result;
                        },
                        likeCountPadding: EdgeInsets.only(left: 15.0),
                      ),
                      LikeButton(
                        size: 20,
                        circleColor: CircleColor(
                            start: Color(0xff669900), end: Color(0xff669900)),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Color(0xff669900),
                          dotSecondaryColor: Color(0xff99cc00),
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.adb,
                            color: isLiked ? Colors.green : Colors.grey,
                            size: 20,
                          );
                        },
                        likeCount: 665,
                        likeCountAnimationType: LikeCountAnimationType.all,
                        countBuilder: (int count, bool isLiked, String text) {
                          var color = isLiked ? Colors.green : Colors.grey;
                          Widget result;
                          if (count == 0) {
                            result = Text(
                              "love",
                              style: TextStyle(color: color),
                            );
                          } else
                            result = Text(
                              text,
                              style: TextStyle(color: color),
                            );
                          return result;
                        },
                        likeCountPadding: EdgeInsets.only(left: 15.0),
                      ),
                      LikeButton(
                        size: 20,
                        isLiked: null,
                        circleColor: CircleColor(
                          start: Colors.redAccent[100],
                          end: Colors.redAccent[400],
                        ),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.red[300],
                          dotSecondaryColor: Colors.red[200],
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.assistant_photo,
                            color: Colors.red,
                            size: 20,
                          );
                        },
                        likeCount: 888,
                        countBuilder: (int count, bool isLiked, String text) {
                          var color = Colors.red;
                          Widget result;
                          if (count == 0) {
                            result = Text(
                              "love",
                              style: TextStyle(color: color),
                            );
                          } else
                            result = Text(
                              text,
                              style: TextStyle(color: color),
                            );
                          return result;
                        },
                        likeCountPadding: EdgeInsets.only(left: 15.0),
                      ),
                      LikeButton(
                        size: 20,
                        circleColor: CircleColor(
                            start: Colors.pinkAccent[200],
                            end: Colors.pinkAccent[400]),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.lightBlue[300],
                          dotSecondaryColor: Colors.lightBlue[200],
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.insert_emoticon,
                            color: isLiked ? Colors.lightBlueAccent : Colors.grey,
                            size: 20,
                          );
                        },
                      ),
                      LikeButton(
                        size: 20,
                        isLiked: null,
                        circleColor: CircleColor(
                          start: Colors.grey[200],
                          end: Colors.grey[400],
                        ),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.grey[600],
                          dotSecondaryColor: Colors.grey[200],
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.cloud,
                            color: isLiked ? Colors.grey[900] : Colors.grey,
                            size: 20,
                          );
                        },
                        likeCount: 888,
                        countPostion: CountPostion.left,
                        countBuilder: (int count, bool isLiked, String text) {
                          var color = Colors.grey;
                          Widget result;
                          if (count == 0) {
                            result = Text(
                              "love",
                              style: TextStyle(color: color),
                            );
                          } else
                            result = Text(
                              text,
                              style: TextStyle(color: color),
                            );
                          return result;
                        },
                        likeCountPadding: EdgeInsets.only(right: 15.0),
                      ),
                      LikeButton(
                        size: 20,
                        isLiked: null,
                        circleColor: CircleColor(
                          start: Colors.indigoAccent[200],
                          end: Colors.indigoAccent[400],
                        ),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.indigoAccent[700],
                          dotSecondaryColor: Colors.indigoAccent[200],
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.access_alarm,
                            color: isLiked ? Colors.indigoAccent[700] : Colors.grey,
                            size: 20,
                          );
                        },
                        likeCount: 888,
                        countPostion: CountPostion.bottom,
                        countBuilder: (int count, bool isLiked, String text) {
                          var color = Colors.grey;
                          Widget result;

                          result = Text(
                            text,
                            style: TextStyle(color: color),
                          );
                          return result;
                        },
                        likeCountPadding: EdgeInsets.only(top: 15.0),
                        countDecoration: (Widget count) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              count,
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "loves",
                                style: TextStyle(color: Colors.indigoAccent),
                              )
                            ],
                          );
                        },
                      ),
                      LikeButton(
                        size: 20,
                        isLiked: null,
                        circleColor: CircleColor(
                          start: Colors.orange[200],
                          end: Colors.orange[400],
                        ),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.orange[600],
                          dotSecondaryColor: Colors.orange[200],
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.camera_alt,
                            color: isLiked ? Colors.orange[900] : Colors.grey,
                            size: 20,
                          );
                        },
                        likeCount: 888,
                        countPostion: CountPostion.top,
                        countBuilder: (int count, bool isLiked, String text) {
                          var color = Colors.grey;
                          Widget result;
                          result = Text(
                            text,
                            style: TextStyle(color: color),
                          );
                          return result;
                        },
                        likeCountPadding: EdgeInsets.only(bottom: 15.0),
                        countDecoration: (Widget count) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              count,
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "loves",
                                style: TextStyle(color: Colors.orange),
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            )
          ])),
    );
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async{
    /// send your request here
    // final bool success= await sendRequest();

    /// if failed, you can do nothing
    // return success? !isLiked:isLiked;

    return !isLiked;
  }
}