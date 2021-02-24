import 'package:flutter/material.dart';



class Profile4 extends StatelessWidget {

  static const routeName = '/Profile4';
  @override
  Widget build(BuildContext context) {
    double widthC = MediaQuery.of(context).size.width * 100;
    return Scaffold(
        backgroundColor: Colors.grey.shade500,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[


              //==========================================================================================
              // build Top Section of Profile (include : Profile Image & Cover Image )
              //==========================================================================================
              _buildHeader(),

              //==========================================================================================
              // build middle Section of Profile (include : main info  )
              //==========================================================================================
              _buildMainInfo(context,widthC),


              SizedBox(height: 10.0),


              //==========================================================================================
              //  build Bottom Section of Profile (include : email - phone number - about - location )
              //==========================================================================================
              _buildInfo(context,widthC),
            ],
          ),
        ));
  }

  Widget _buildHeader() {
    return Stack(
      children: <Widget>[
        Ink(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image:NetworkImage('https://i.picsum.photos/id/839/300/300.jpg'), fit: BoxFit.cover),
          ),
        ),
        Ink(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black38,
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 140),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                color: Colors.grey.shade500,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Colors.white,
                      width: 6.0,
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular( 80),
                      child: Image.network('https://i.picsum.photos/id/839/200/200.jpg',width: 80,height: 80,fit: BoxFit.fill)),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }


  Widget _buildMainInfo(BuildContext context,double width){
    return Container(
      width: width,
      margin: const EdgeInsets.all(10),
      alignment: AlignmentDirectional.center,
      child: Column(
        children: <Widget>[
          Text('Lorem Ipsum',style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text('Flutter',style: TextStyle(color: Colors.grey.shade50,fontStyle: FontStyle.italic))
        ],
      ),
    );
  }

  Widget _buildInfo(BuildContext context,double width){
    return Container(
        padding: EdgeInsets.all(10),
        child:   Card(
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[


                    ListTile(
                      leading: Icon(Icons.email,color: Colors.teal),
                      title: Text("E-Mail"),
                      subtitle: Text("email@gmailc.com"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone,color: Colors.teal),
                      title: Text("Phone Number"),
                      subtitle: Text("11-111111-11"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.person,color: Colors.teal),
                      title: Text("About"),
                      subtitle: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      leading: Icon(Icons.my_location,color: Colors.teal),
                      title: Text("Location"),
                      subtitle: Text("Canada"),
                    ),

                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}



