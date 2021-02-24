import 'package:flutter/material.dart';

class SampleDialog extends StatefulWidget {
  static const routeName = '/SampleDialog';
  @override
  _SampleDialogState createState() => _SampleDialogState();
}

enum ButtonAction {
  cancel,
  agree,
}

class _SampleDialogState extends State<SampleDialog> {

  void showMaterialDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    );
  }




  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Material(
          child: Column(children: <Widget>[

            //=====================
            //       Alert
            //=====================
            Container(
              padding: const EdgeInsets.only(right: 50.0, left: 50.0),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                elevation: 5,
                color: Colors.black,

                child: new Text(
                  'Alert',
                  style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  showMaterialDialog<ButtonAction>(
                    context: context,
                    child: AlertDialog(
                      title: const Text('Are you sure you want to delete the item?'),
                      content: Text(
                        'Confirm or cancel the deletion process',
                        // style: dialogTextStyle,
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: const Text('Cancel'),
                          onPressed: () {
                            Navigator.pop(context, ButtonAction.cancel);
                          },
                        ),
                        FlatButton(
                          child: const Text('Agree'),
                          onPressed: () {
                            Navigator.pop(context, ButtonAction.agree);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),


            //=====================
            //     Dialogs
            //=====================
            Container(
              padding: const EdgeInsets.only(right: 50.0, left: 50.0),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                elevation: 5,
                color: Colors.black,

                child: new Text(
                  'Alert Dialog',
                  style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  showMaterialDialog<ButtonAction>(
                    context: context,
                    child: AlertDialog(
                      content: Text(
                        'Confirm the deletion process',
                        //  style: dialogTextStyle,
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: const Text('Cancel'),
                          onPressed: () {
                            Navigator.pop(context, ButtonAction.cancel);
                          },
                        ),
                        FlatButton(
                          child: const Text('Agree'),
                          onPressed: () {
                            Navigator.pop(context, ButtonAction.agree);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),



            //=================================
            //    Alert with Title Dialog
            //=================================
            Container(
              padding: const EdgeInsets.only(right: 50.0, left: 50.0),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  elevation: 5,
                  color: Colors.black,

                  child: new Text(
                    'Alert with Title Dialog',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    showMaterialDialog<ButtonAction>(
                      context: context,
                      child: AlertDialog(
                        title: const Text('Are you sure you want to delete the item?'),
                        content: Text(
                          'If you want to delete the item, choose AGREE or cancel the operation',
                          //  style: dialogTextStyle,
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: const Text('Cancel'),
                            onPressed: () {
                              Navigator.pop(context, ButtonAction.cancel);
                            },
                          ),
                          FlatButton(
                            child: const Text('Agree'),
                            onPressed: () {
                              Navigator.pop(context, ButtonAction.agree);
                            },
                          ),
                        ],
                      ),
                    );
                  }),
            ),


            //=================================
            //           Custom Dialog
            //=================================
            Container(
              padding: const EdgeInsets.only(right: 50.0, left: 50.0),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                elevation: 5,
                color: Colors.black,

                child: new Text(
                  'Custom Dialog',
                  style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => new Dialog(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 0.0,
                      child: new Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                              top: 66.0 + 16.0,
                              bottom: 16.0,
                              left: 16.0,
                              right: 16.0,
                            ),
                            margin: EdgeInsets.only(top: 66.0),
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(16.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 16.0,
                                  offset: const Offset(0.0, 16.0),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize
                                  .min,
                              children: <Widget>[
                                Text(
                                  "Conformation",
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.teal),
                                ),
                                SizedBox(height: 16.0),
                                Text(
                                  "There's been an unexpected error that's stopped the application.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(height: 24.0),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(16.0)),
                                    color: Colors.teal,
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop();
                                    },
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 24.0 + 66.0,
                            right: 24.0 + 66.0,
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage: AssetImage('assets/images/wood_bk.jpg'),
                              backgroundColor: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),


          ])
      ),
    );
  }

}