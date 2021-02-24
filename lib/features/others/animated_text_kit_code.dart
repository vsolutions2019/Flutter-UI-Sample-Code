import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


/// this class uses this library : animated_text_kit
/// the link to it is : https://pub.dev/packages/animated_text_kit#-installing-tab-


class AnimatedTextKitPage extends StatefulWidget {
  static const routeName = '/AnimatedTextKitPage';
  final String title;

  AnimatedTextKitPage({
    Key key,
    this.title = 'Animated Text Kit',
  }) : super(key: key);

  @override
  _AnimatedTextKitPageState createState() => new _AnimatedTextKitPageState();
}

class _AnimatedTextKitPageState extends State<AnimatedTextKitPage> {
  List<Widget> _textAnimationKit = [

    /// -----------------------------------------
    /// Build main content with scrollable content with listView
    /// -----------------------------------------
    ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: 20.0,
              height: 100.0,
            ),
            Text(
              "Be",
              style: TextStyle(fontSize: 43.0),
            ),
            SizedBox(
              width: 20.0,
              height: 100.0,
            ),

            /// -----------------------------------------
            /// Rotate Animated Text Kit widget
            /// -----------------------------------------
            RotateAnimatedTextKit(
              onTap: () {
                print("Tap Event");
              },
              isRepeatingAnimation: false,
              text: ["AWESOME", "OPTIMISTIC", "DIFFERENT"],
              textStyle: TextStyle(fontSize: 40.0, fontFamily: "Horizon"),
            ),
          ],
        ),
      ],
    ),

    /// -----------------------------------------
    /// Fade Animated Text Kit widget
    /// -----------------------------------------
    FadeAnimatedTextKit(
      onTap: () {
        print("Tap Event");
      },
      text: ["do IT!", "do it RIGHT!!", "do it RIGHT NOW!!!"],
      textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    ),
    SizedBox(
      width: 250.0,


      /// -----------------------------------------
      /// Typer Animated Text Kit widget
      /// -----------------------------------------
      child: TyperAnimatedTextKit(
        onTap: () {
          print("Tap Event");
        },
        text: [
          "It is not enough to do your best,",
          "you must know what to do,",
          "and then do your best",
          "- W.Edwards Deming",
        ],
        textStyle: TextStyle(fontSize: 30.0, fontFamily: "Bobbers"),
      ),
    ),
    SizedBox(
      width: 250.0,

      /// -----------------------------------------
      /// Type writer Animated Text Kit widget
      /// -----------------------------------------
      child: TypewriterAnimatedTextKit(
        onTap: () {
          print("Tap Event");
        },
        text: [
          "Discipline is the best tool",
          "Design first, then code",
          "Do not patch bugs out, rewrite them",
          "Do not test bugs out, design them out",
        ],
        textStyle: TextStyle(fontSize: 30.0, fontFamily: "Agne"),
      ),
    ),

    /// -----------------------------------------
    /// Scale Animated Text Kit widget
    /// -----------------------------------------
    ScaleAnimatedTextKit(
      onTap: () {
        print("Tap Event");
      },
      text: ["Think", "Build", "Ship"],
      textStyle: TextStyle(fontSize: 70.0, fontFamily: "Canterbury"),
    ),


    /// -----------------------------------------
    /// Colorize Animated Text Kit widget
    /// -----------------------------------------
    ColorizeAnimatedTextKit(
      onTap: () {
        print("Tap Event");
      },
      text: [
        "Larry Page",
        "Bill Gates",
        "Steve Jobs",
      ],
      textStyle: TextStyle(fontSize: 50.0, fontFamily: "Horizon"),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
    ),

    /// -----------------------------------------
    /// Text Liquid Fill Kit widget
    /// -----------------------------------------
    Center(
      child: TextLiquidFill(
        text: 'LIQUIDY',
        waveColor: Colors.blueAccent,
        boxBackgroundColor: Colors.redAccent,
        textStyle: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
        boxHeight: 300,
      ),
    )
  ];

  /// -----------------------------------------
  /// Sets of Colors
  /// -----------------------------------------
  List<Color> _colors = [
    Colors.orange[800],
    Colors.brown[600],
    Colors.lightGreen[800],
    Colors.teal[700],
    Colors.blue[700],
    Colors.blueGrey[50],
    Colors.white
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40.0,
            width: double.maxFinite,
          ),
          Text(
            labels[_index],
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            decoration: BoxDecoration(color: _colors[_index]),
            child: Center(child: _textAnimationKit[_index]),
            height: 300.0,
            width: 300.0,
          ),
          Expanded(
            child: Container(),
          ),
          InkWell(
            child: Icon(
              Icons.play_circle_filled,
              size: 70.0,
            ),
            onTap: () {
              setState(() {
                _index = (_index + 1) % _textAnimationKit.length;
              });
            },
          ),
          SizedBox(
            height: 20.0,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}

const List<String> labels = [
  "Rotate",
  "Fade",
  "Typer",
  "Typewriter",
  "Scale",
  "Colorize",
  "TextLiquidFill"
];
