import 'package:flutter/material.dart';


class Profile3 extends StatefulWidget {
  static const routeName = '/Profile3';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile3> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            ClipPath(
              child: Container(color: Colors.pinkAccent.withOpacity(0.5)),
              clipper: CustomClipperWidget(),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    //===================
                    //   Profile Image
                    //===================
                    Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.picsum.photos/id/628/300/300.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(75.0)),
                          //borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(blurRadius: 7.0, color: Colors.pink)
                          ]),
                    ),

                    SizedBox(height: 20),

                    //===============
                    //      Name
                    //===============
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.camera, size: 20),
                          Container(
                              margin: EdgeInsets.only(left: 4,right: 4),
                              child: Text("Lorem Ipsum",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                        ],
                      ),
                    ),

                    //=============
                    // Info Card
                    //=============
                    _buildInfoCard(context),

                    //=============
                    //   Gallery
                    //=============
                    Gallery()
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget _buildInfoCard(context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Card(
            elevation: 5.0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, bottom: 16.0, right: 10.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        'Photos',
                        style: new TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: new Text(
                          '15',
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: Color(0Xffde6262),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      new Text(
                        'Followers',
                        style: new TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: new Text(
                          '3.5k',
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: Color(0Xffde6262),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  new Column(
                    children: <Widget>[
                      new Text(
                        'Following',
                        style: new TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: new Text(
                          '150',
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: Color(0Xffde6262),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//===================
// Build Gallery
//===================
class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var delegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
    );
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: 225,
      margin: EdgeInsets.all(8),
      child: GridView(
        physics: BouncingScrollPhysics(),
        gridDelegate: delegate,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
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
      ),
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

//=============================
//   Clip  Class
//=============================
class CustomClipperWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.3);
    path.lineTo(size.width + 250, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
