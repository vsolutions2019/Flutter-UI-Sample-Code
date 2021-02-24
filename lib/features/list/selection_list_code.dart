import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterxui/consts.dart';


/// ---------------------------
///  Selection List widget goes here.
/// ---------------------------
class SelectionList extends StatelessWidget {
  static const routeName = '/SelectionList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Selection List"),
      ),

      /// ---------------------------
      ///  Sopping List widget for main content in home  .
      /// ---------------------------
        body: new SoppingList(
          product: [
            new Product('Item 1', 'This is description of Item 1',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 2', 'This is description of Item 2',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 3', 'This is description of Item 3',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 4', 'This is description of Item 4',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 5', 'This is description of Item 5',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 6', 'This is description of Item 6',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 7', 'This is description of Item 7',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 8', 'This is description of Item 8',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 9', 'This is description of Item 9',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 10', 'This is description of Item 10',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 11', 'This is description of Item 11',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 12', 'This is description of Item 12',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 13', 'This is description of Item 13',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 14', 'This is description of Item 14',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
            new Product('Item 15', 'This is description of Item 15',
                Constants.images[
                (new Random()).nextInt(Constants.images.length)], false),
          ],
        ),
    );
  }
}


/// ---------------------------
///  Model that holds data in list view home .
/// ---------------------------
class Product {
  String name;
  String description;
  String avatarImage;
  bool isCheck;
  Product(this.name, this.description, this.avatarImage, this.isCheck);
}


/// ---------------------------
///  Shopping Item List widget for main content in home with easy fractions .
/// ---------------------------
class ShoppingItemList extends StatefulWidget {
  final Product product;
  ShoppingItemList(Product product)
      : product = product,
        super(key: new ObjectKey(product));
  @override
  ShoppingItemState createState() {
    return new ShoppingItemState(product);
  }
}


class ShoppingItemState extends State<ShoppingItemList> {
  final Product product;
  ShoppingItemState(this.product);

  @override
  Widget build(BuildContext context) {
    /// ---------------------------
    /// Card Shopping Item  widget for main content in home .
    /// ---------------------------
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
        child: new ListTile(
            onTap: null,
            leading: new CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 35,
              backgroundImage: new NetworkImage(product.avatarImage),
            ),
            title: new Row(
              children: <Widget>[
                new Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          product.name,
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: new Text(
                            product.description,
                            style:
                            TextStyle(color: Colors.grey, fontSize: 16.0),
                          ),
                        )
                      ]),
                ),
                new Checkbox(
                    value: product.isCheck,
                    onChanged: (bool value) {
                      setState(() {
                        product.isCheck = value;
                      });
                    })
              ],
            )),
      ),
    );
  }
}

/// ---------------------------
///  Sopping List widget for main content in home  .
/// ---------------------------

class SoppingList extends StatefulWidget {
  SoppingList({Key key, this.product}) : super(key: key);
  List<Product> product;
  @override
  _ShoppingListState createState() {
    return new _ShoppingListState();
  }
}


class _ShoppingListState extends State<SoppingList> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      padding: new EdgeInsets.all(8.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          /// ---------------------------
          ///  Building expanded list view main content .
          /// ---------------------------

          new Expanded(
              child: new ListView(
                padding: new EdgeInsets.symmetric(vertical: 8.0),
                children: widget.product.map((Product product) {
                  return new ShoppingItemList(product);
                }).toList(),
              )),
        ],
      ),
    );
  }
}
