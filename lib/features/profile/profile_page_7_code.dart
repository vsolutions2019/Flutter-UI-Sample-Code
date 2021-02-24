import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';


class Profile7 extends StatefulWidget {
  static const routeName = '/Profile7';
  @override
  _Profile7State createState() => _Profile7State();
}

class _Profile7State extends State<Profile7> {
  static double maxRadius = 40.0;
  static double minRadius = 15.0;
  double radius = maxRadius;
  double expandedHeader = 130.0;
  double translate = -maxRadius;
  bool isExpanded = true;
  double offset = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: NotificationListener<ScrollUpdateNotification>(
          onNotification: (scrollNotification) {
            final pixels = scrollNotification.metrics.pixels;

            final scrollTabs = (scrollNotification.metrics.axisDirection ==
                    AxisDirection.right ||
                scrollNotification.metrics.axisDirection == AxisDirection.left);

            if (!scrollTabs) {
              if (expandedHeader - pixels <= kToolbarHeight) {
                if (isExpanded) {
                  translate = 0.0;
                  setState(() {
                    isExpanded = false;
                  });
                }
              } else {
                translate = -maxRadius + pixels;
                if (translate > 0) {
                  translate = 0.0;
                }
                if (!isExpanded) {
                  setState(() {
                    isExpanded = true;
                  });
                }
              }

              offset = pixels * 0.4;

              final newSize = (maxRadius - offset);

              setState(() {
                if (newSize < minRadius) {
                  radius = minRadius;
                } else if (newSize > maxRadius) {
                  radius = maxRadius;
                } else {
                  radius = newSize;
                }
              });
            }
            return false;
          },
          child: DefaultTabController(
            length: 8,
            child: CustomScrollView(
              physics: ClampingScrollPhysics(),
              slivers: <Widget>[
                SliverAppBar(
                  expandedHeight: expandedHeader,
                  backgroundColor: Colors.grey,
                  leading: BackButton(
                    color: isExpanded ? Colors.grey : Colors.white,
                  ),
                  pinned: true,
                  elevation: 5.0,
                  forceElevated: true,
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                        color:
                            isExpanded ? Colors.transparent : Colors.blue[800],
                        image: isExpanded
                            ? DecorationImage(
                                fit: BoxFit.cover,
                                alignment: Alignment.bottomCenter,
                                image: NetworkImage(
                                  Constants.images[Random()
                                      .nextInt(Constants.images.length)],
                                ),
                              )
                            : null),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: isExpanded
                          ? Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, maxRadius),
                              child: _buildProfileImage(radius),
                            )
                          : SizedBox.shrink(),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        isExpanded
                            ? SizedBox(
                                height: minRadius * 2,
                              )
                            : _buildProfileImage(minRadius),
                        ProfileHeader(),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Gallery();
                  }, childCount: 1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildProfileImage(double radius) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[800],
              width: 2.0,
            ),
            shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            radius: radius,
            backgroundImage:  NetworkImage(
              Constants.images[
              Random().nextInt(Constants.images.length)],
            ),
          ),
        ),
      ),
    );
  }
}

//=================
//  Profile Info
//================
class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Lorem Ipsum",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "flutter",
            style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
                fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: 14.0,
          ),
          Text(
            "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          )
        ],
      ),
    );
  }
}

//=================
//  Build Gallery
//=================
class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var delegate = new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
    );

    return new GridView(
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 16.0),
      shrinkWrap: true,
      gridDelegate: delegate,
      children: <Widget>[
        _buildImageGallery('https://i.picsum.photos/id/823/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/64/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/646/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/65/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/68/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/680/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/777/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/836/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/838/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/839/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/91/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/996/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/978/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/1011/200/200.jpg'),
        _buildImageGallery('https://i.picsum.photos/id/1014/200/200.jpg'),
      ],
    );
  }

  _buildImageGallery(String imageUrl) {
    return Image.network(
      imageUrl,
      width: 200.0,
      height: 200.0,
    );
  }
}
