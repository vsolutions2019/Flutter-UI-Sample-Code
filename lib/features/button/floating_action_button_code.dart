import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// ---------------------------
///   Floating Action Buttons widgets goes here.
/// ---------------------------

class FloatingActionButtons extends StatefulWidget {
  static const routeName = '/FloatingActionButtons';
  @override
  _FloatingActionButtonsState createState() => _FloatingActionButtonsState();
}

class _FloatingActionButtonsState extends State<FloatingActionButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(

        //====================
        //    Building scrollable content .
        //====================

        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 1.5,
                        color: Colors.lightBlue,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Icon FAB",
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FloatingActionButton(
                              heroTag: "tag3",
                              backgroundColor: Colors.amber,
                              child: Icon(Icons.delete),
                              onPressed: () {}),
                        ),
                      ],
                    ),

                    //====================
                    //    Icon Floating Action Button
                    //====================

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Label FAB",
                            style: TextStyle(
                                color: Colors.deepOrangeAccent, fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FloatingActionButton(
                              heroTag: "tag4",
                              backgroundColor: Colors.lightBlue,
                              child: Text("Add"),
                              onPressed: () {}),
                        ),
                      ],
                    ),

                    //====================
                    //    Circle Border   Floating Action Button
                    //====================

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Circle Border FAB",
                            style: TextStyle(color: Colors.brown, fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FloatingActionButton(
                              heroTag: "tag5",
                              shape: CircleBorder(
                                  side:
                                      BorderSide(color: Colors.deepOrangeAccent)),
                              backgroundColor: Colors.deepOrangeAccent,
                              child: Icon(Icons.warning),
                              onPressed: () {}),
                        ),
                      ],
                    ),

                    //====================
                    //    Rounded Rectangle Border   Floating Action Button
                    //====================

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Rounded Rectangle Border FAB",
                            style: TextStyle(color: Colors.black, fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FloatingActionButton(
                              heroTag: "tag6",
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              backgroundColor: Colors.amber,
                              child: Icon(Icons.data_usage),
                              onPressed: () {}),
                        ),
                      ],
                    ),

                    //====================
                    //    Icon Color   Floating Action Button
                    //====================

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Icon Color FAB",
                            style: TextStyle(color: Colors.grey, fontSize: 16.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FloatingActionButton(
                              heroTag: "tag1",
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              backgroundColor: Colors.lightBlue,
                              child: Icon(Icons.access_alarm,
                                  color: Colors.lightBlue),
                              onPressed: () {}),
                        ),
                      ],
                    ),

                    //====================
                    //   Icon with Label Floating Action Button
                    //====================

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Icon with Label Fab",
                            style: TextStyle(color: Colors.red, fontSize: 16.0),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FloatingActionButton.extended(
                                  heroTag: "tag7",
                                  label: Text("Add"),
                                  backgroundColor: Colors.green,
                                  icon: Icon(Icons.add),
                                  onPressed: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FloatingActionButton.extended(
                                  heroTag: "tag2",
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  label: Text("Take pic"),
                                  backgroundColor: Colors.yellow,
                                  icon: Icon(Icons.add_a_photo),
                                  onPressed: () {}),
                            ),
                          ],
                        ),
                      ],
                    ),
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
