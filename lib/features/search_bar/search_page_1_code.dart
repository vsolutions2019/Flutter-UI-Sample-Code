import 'package:flutter/material.dart';

class SimpleSearch extends StatefulWidget {
  static const routeName = '/SimpleSearch';
  @override
  _SimpleSearchState createState() => _SimpleSearchState();
}

class _SimpleSearchState extends State<SimpleSearch> {
  TextEditingController searchEditController = TextEditingController();

  //==============================================
  //  Define widget for clear search bar data
  //==============================================
  IconButton _clearButton;

  //==========================================
  //  generate list of 200 items for search
  //==========================================
  final _listItems = List<String>.generate(200, (i) => "Item $i");
  var items = List<String>();

  @override
  void initState() {
    items.addAll(_listItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height:  MediaQuery.of(context).size.height*.1,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      filter(value);
                    },
                    controller: searchEditController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      suffixIcon: _clearButton,
                      hintText: "Type To Search....",
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                    textInputAction: TextInputAction.search,
                  ),
                ),
                Flexible(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/whitebg.jpg'))),
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('${items[index]}'),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  //===========================================
  // function to filter list and return result
  //===========================================
  void filter(String query) {
    List<String> mockList = List<String>();
    mockList.addAll(_listItems);
    if (query.isNotEmpty) {
      List<String> tempListData = List<String>();
      mockList.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          tempListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(tempListData);
        _clearButton = IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () {
            searchEditController.clear();
            _clearButton = null;
            setState(() {
              items.clear();
              items.addAll(_listItems);
            });
          },
        );
      });

      return;
    } else {
      setState(() {
        _clearButton = null;
        items.clear();
        items.addAll(_listItems);
      });
    }
  }
}