import 'package:flutter/material.dart';

class DropdownGeneral extends StatefulWidget {
  static const routeName = '/DropdownGeneral';
  @override
  _DropdownGeneralState createState() => _DropdownGeneralState();
}

class _DropdownGeneralState extends State<DropdownGeneral> {


  List<String> listOfFood = [
    'Pasta',
    'Pizza',
    'Cheese Pizza'
  ]; // Option 2

  List<String> listOfCountry = [
    'The USA',
    'England',
    'Syria',
    'Canada',
  ];
  List<String> listOfCategory = [
    'It',
    'Computer Science',
    'Business',
    'Data Science',
    'Infromation Technologies',
    'Health',
    'Physics'
  ];
  String selectedIndexCategory='Business' , selectedIndexCountry='The USA',selectedIndexFood ='Pizza';

  String dropdownNames;
  String dropdownScrollable = 'I';

  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(left: 16,right: 16),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 32.0),

              //==================================================================


              //===============================
              //     Category Dropdown
              //===============================
              Container(
                constraints: BoxConstraints(maxWidth: 250),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text('Category',style: TextStyle(fontSize: 14,color: Colors.blueGrey)),

                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      child: Card(

                          child: DropdownButton(
                            isExpanded: true,
                            value: selectedIndexCategory,
                            style: TextStyle(fontSize: 14,color: Colors.blueGrey),
                            icon: Icon(Icons.keyboard_arrow_down),
                            underline: Container(color: Colors.transparent),
                            onChanged: (newValue) {
                              setState(() {
                                selectedIndexCategory = newValue;
                              });
                            },
                            items: listOfCategory.map((category) {
                              return DropdownMenuItem(
                                child: Container(margin: EdgeInsets.only(left: 4,right: 4),child: Text(category,style: TextStyle(fontSize: 14,color: Colors.blueGrey))),
                                value: category,
                              );
                            }).toList(),
                          )),
                    ),


                  ],
                ),
              ),

              //==================================================================

              const SizedBox(height: 32.0),

              //==================================================================


              //===============================
              //    Dropdown with  Hint
              //===============================
              Container(
                constraints: BoxConstraints(maxWidth: 250),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text('Dropdown with  Hint',style: TextStyle(fontSize: 14,color: Colors.blueGrey)),

                    Container(
                      margin: EdgeInsets.only(
                          left: 16, right:16),
                      child: Card(

                          child:  DropdownButton<String>(
                            value: dropdownNames,
                            hint: const Text('Choose'),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownNames = newValue;
                              });
                            },
                            items: <String>['Sara', 'Jaad', 'Rama', 'Ali']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Container(margin: EdgeInsets.only(left: 4,right: 4),child: Text(value,style:TextStyle(fontSize: 14,color: Colors.blueGrey))),
                              );
                            }).toList(),
                          )),
                    ),


                  ],
                ),
              ),

              //==================================================================

              const SizedBox(height: 32.0),

              //==================================================================


              //===============================
              //       Country  Dropdown
              //===============================
              Container(
                constraints: BoxConstraints(maxWidth: 250),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text('Country',style: TextStyle(fontSize: 14,color: Colors.blueGrey)),

                    Container(
                      margin: EdgeInsets.only(
                          left: 16, right: 16),
                      child: Card(

                          child: DropdownButton(
                            isExpanded: true,
                            value: selectedIndexCountry,
                            style: TextStyle(fontSize: 14,color: Colors.blueGrey),
                            icon: Icon(Icons.keyboard_arrow_down),
                            underline: Container(color: Colors.transparent),
                            onChanged: (newValue) {
                              setState(() {
                                selectedIndexCountry = newValue;
                              });
                            },
                            items: listOfCountry.map((country) {
                              return DropdownMenuItem(
                                child: Container(margin: EdgeInsets.only(left: 4,right: 4),child: Text(country,style: TextStyle(fontSize: 14,color: Colors.blueGrey)),),
                                value: country,
                              );
                            }).toList(),
                          )),
                    ),


                  ],
                ),
              ),

              //==================================================================

              const SizedBox(height: 32.0),

              //==================================================================


              //===============================
              //       Scrollable  Dropdown
              //===============================
              Container(
                constraints: BoxConstraints(maxWidth: 250),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text('Scrollable Dropdown',style: TextStyle(fontSize: 14,color: Colors.blueGrey)),

                    Container(
                      margin: EdgeInsets.only(
                          left: 16, right: 16),
                      child: Card(

                          child:  DropdownButton<String>(
                            value: dropdownScrollable,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownScrollable = newValue;
                              });
                            },
                            items: <String>[
                              'I',
                              'He',
                              'She',
                              'You',
                              'We',
                              'They',
                              'Am',
                              'Is',
                              'Are',
                              'A',
                              'An',
                              'Me',
                              'His',
                              'Her',
                              'Your',
                              'Our',
                              'The',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Container(margin: EdgeInsets.only(left: 4,right: 4),child: Text(value,style: TextStyle(fontSize: 14,color: Colors.blueGrey))),
                              );
                            }).toList(),
                          )),
                    ),


                  ],
                ),
              ),

              //==================================================================

              const SizedBox(height: 32.0),

              //==================================================================


              //===============================
              //       Food  Dropdown
              //===============================
              Container(
                constraints: BoxConstraints(maxWidth: 250),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Text('Food',style: TextStyle(fontSize: 14,color: Colors.blueGrey)),

                    Container(
                      margin: EdgeInsets.only(
                          left: 16, right: 16),
                      child: Card(

                          child: DropdownButton(
                            isExpanded: true,
                            value: selectedIndexFood,
                            style:TextStyle(fontSize: 14,color: Colors.grey.shade50),
                            icon: Icon(Icons.keyboard_arrow_down),
                            underline: Container(color: Colors.transparent),
                            onChanged: (newValue) {
                              setState(() {
                                selectedIndexFood = newValue;
                              });
                            },
                            items: listOfFood.map((food) {
                              return DropdownMenuItem(
                                child: Container(margin: EdgeInsets.only(left: 4,right: 4),child: Text(food,style: TextStyle(fontSize: 14,color: Colors.blueGrey)),),
                                value: food,
                              );
                            }).toList(),
                          )),
                    ),


                  ],
                ),
              ),

              //==================================================================

              const SizedBox(height: 64.0),
            ],
          ),
        ),
      ),
    );
  }
}