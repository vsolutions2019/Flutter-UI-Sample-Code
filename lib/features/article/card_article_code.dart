import 'package:flutter/material.dart';

class CardArticle extends StatefulWidget {
  static const routeName = '/CardArticle';
  @override
  _MediumArticleState createState() => _MediumArticleState();
}

class _MediumArticleState extends State<CardArticle> {

  List<ArticleRelated> listItems;

  Color _color=Colors.black;
  Color _color2=Colors.grey;
  Color _color3=Colors.grey;
  Color _color4=Colors.blueAccent;
  @override
  void initState() {
    super.initState();

    listItems=[
      ArticleRelated(
        imageUrl: 'https://i.picsum.photos/id/206/100/100.jpg',
        title: 'Researchers uncover hidden antibiotic potential of cannabis compound',
      ),
      ArticleRelated(
        imageUrl: 'https://i.picsum.photos/id/238/100/100.jpg',
        title: 'The challenge of new antibiotic discovery',
      ),
      ArticleRelated(
        imageUrl: 'https://i.picsum.photos/id/24/100/100.jpg',
        title: 'Antibiotic resistance poses a growing risk during pandemics',
      ),
      ArticleRelated(
        imageUrl: 'https://i.picsum.photos/id/274/100/100.jpg',
        title: 'Study finds no advantage in using two antibiotics to treat MRSA infections',
      )
    ];
  }

  @override
  Widget build(BuildContext context) {


    double widthC = MediaQuery.of(context).size.width * 100;
    double heightC = MediaQuery.of(context).size.height * 100;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                tileMode: TileMode.repeated,
                colors: [


                  _color2,
                  _color2,
                  _color3,
                  _color2,
                  _color2,



                ])),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25),
              //=================
              // personal info
              //=================
              Container(

                margin: EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  children: <Widget>[
                    Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image.network('https://i.picsum.photos/id/177/100/100.jpg',width: 70,height:70,fit: BoxFit.fill,),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Dr. Jhone Banel',style: TextStyle(fontSize:14,color: Colors.grey)),
                          Text('Public Health',style:TextStyle(fontSize:14,color: Colors.grey)),
                          Text('1 day ago',style: TextStyle(fontSize:14,color: Colors.grey)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(

                width: widthC,
                margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                child: Container(
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          SizedBox(height: 20),


                          //=============
                          //   title
                          //=============
                          Wrap(
                            children: <Widget>[
                              Text('What is Lorem Ipsum?',style: TextStyle(fontSize:26,color:_color,fontWeight: FontWeight.bold ))
                            ],
                          ),



                          SizedBox(height: 20),

                          //==============
                          //   Image
                          //==============
                          Container(
                            width: widthC,
                            height: 200,
                            child: Image.network('https://i.picsum.photos/id/18/200/200.jpg',width: widthC,height: 200,fit: BoxFit.cover),
                          ),


                          SizedBox(height: 20),
                          //=============
                          //   Subtitle
                          //=============
                          _buildDescription('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),




                          SizedBox(height: 10),


                          Divider(
                            height: 5,
                            color: _color,
                          ),


                          SizedBox(height: 10),

                          //==============================
                          //  Suggested Reading  Title
                          //==============================
                          Container(
                            margin: EdgeInsets.only(bottom: 10,top: 10),
                            child: Text('Suggested Reading',style: TextStyle(fontSize:20,color: _color)),
                          ),

                          //==============================
                          //  list of Suggested Reading
                          //==============================
                          Container(
                            height: 200,
                            width:  widthC,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: listItems.length,
                              itemBuilder: (BuildContext ctxt, int index) => listItems[index],
                            ),
                          ),


                          SizedBox(height: 10),

                          Divider(
                            height: 5,
                            color: _color,
                          ),

                          SizedBox(height: 20),


                          //=============
                          //   title 3
                          //=============
                          _buildTitle('Where can I get some?'),


                          SizedBox(height: 20),

                          //====================
                          //   Description 3
                          //====================
                          _buildDescription('There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),


                          SizedBox(height: 20),


                          Divider(
                            height: 5,
                            color: _color,
                          ),

                          //==============================
                          //  number of views
                          //==============================
                          Container(
                            width: widthC,
                            margin: EdgeInsets.all(10),
                            alignment: AlignmentDirectional.centerEnd,
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(Icons.remove_red_eye),
                                Text('  1,873  ',style: TextStyle(fontSize: 14,color: _color)),
                              ],
                            ),
                          ),


                          SizedBox(height: 70),



                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  _buildTitle (String text){
    return Wrap(
      children: <Widget>[
        Text('$text',style: TextStyle(color:_color,fontStyle: FontStyle.italic,fontSize: 20))
      ],
    );
  }

  _buildDescription (String text){
    return Wrap(
      children: <Widget>[
        Text('$text',style: TextStyle(color: _color,fontSize: 16))
      ],
    );
  }


}

class ArticleRelated extends StatelessWidget {

  final String imageUrl;final String title;
  ArticleRelated({this.imageUrl,this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 250,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.network(imageUrl,width: 250,height:150,fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$title',style:TextStyle(color: Colors.black,fontSize: 16),overflow: TextOverflow.ellipsis,),
            )
          ],
        ),
      ),
    );
  }
}