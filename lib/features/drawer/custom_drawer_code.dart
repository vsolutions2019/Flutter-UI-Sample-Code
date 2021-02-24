import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutterxui/consts.dart';
import 'package:flutterxui/res/text_style.dart';


class AnimatedDrawer extends StatefulWidget {
  static const routeName = '/AnimatedDrawer';
  @override
  __AnimatedDrawerPage createState() => __AnimatedDrawerPage();
}

class __AnimatedDrawerPage extends State<AnimatedDrawer> {
  @override
  Widget build(BuildContext context) {

    return AnimatedDrawerScreen();
  }
}

/// Drawer widget goes here

class AnimatedDrawerScreen extends StatefulWidget {
  @override
  _AnimatedDrawerState createState() => _AnimatedDrawerState();
}

class _AnimatedDrawerState extends State<AnimatedDrawerScreen> {
  Widget screenView;
  DrawerIndex drawerIndex;
  AnimationController sliderAnimationController;
  static const String home = 'Home page';
  static const String message = 'Message';
  static const String profile = 'Profile';
  static const String notification = 'Notification';

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;

    /// first  Item in drawer
    screenView = const Page(
      content: home,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(

          appBar: AppBar(title: Text("Animated drawer", style: TextStyle(color: Colors.green),),),
          drawerScrimColor: Colors.lime,

          /// Drawer Controller for changing size, animation, and animation duration
          ///
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            animationController: (AnimationController animationController) {
              sliderAnimationController = animationController;
            },
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
            },
            screenView: screenView,
          ),
        ),
      ),
    );
  }
  /// changing current item in drawer

  void changeIndex(DrawerIndex drawerIndexdata) {

    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView = const Page(
            content: home,
          );
        });
      } else if (drawerIndex == DrawerIndex.Message) {
        setState(() {
          screenView = const Page(
            content: message,
          );
        });
      } else if (drawerIndex == DrawerIndex.Profile) {
        setState(() {
          screenView = const Page(
            content: profile,
          );
        });
      } else if (drawerIndex == DrawerIndex.Notification) {
        setState(() {
          screenView = const Page(
            content: notification,
          );
        });
      } else {
        Navigator.of(context).pop();
      }
    }
  }
}

/// Item in drawer

class Page extends StatelessWidget {
  final String content;

  const Page({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          this.content,
          style: textStyle.textBasic,
        ),
      ),
    );
  }
}

/// Item in drawer
class HomeDrawer extends StatefulWidget {
  const HomeDrawer(
      {Key key,
      this.screenIndex,
      this.iconAnimationController,
      this.callBackIndex})
      : super(key: key);

  final AnimationController iconAnimationController;
  final DrawerIndex screenIndex;
  final Function(DrawerIndex) callBackIndex;

  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}


class _HomeDrawerState extends State<HomeDrawer> {
  List<DrawerList> drawerList;

  @override
  void initState() {
    setdDrawerListArray();
    super.initState();
  }

  /// Inilize Items list in drawer

  void setdDrawerListArray() {
    drawerList = <DrawerList>[
      DrawerList(
        index: DrawerIndex.HOME,
        labelName: 'Home',
        icon: Icon(Icons.home),
      ),
      DrawerList(
        index: DrawerIndex.Message,
        labelName: 'Message',
        icon: Icon(Icons.message),
      ),
      DrawerList(
        index: DrawerIndex.Profile,
        labelName: 'Profile',
        icon: Icon(Icons.person),
      ),
      DrawerList(
        index: DrawerIndex.Notification,
        labelName: 'Notification',
        icon: Icon(Icons.notifications_none),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  /// ---------------------------
                  /// Animated Builder for drawer
                  /// ---------------------------

                  AnimatedBuilder(
                    animation: widget.iconAnimationController,
                    builder: (BuildContext context, Widget child) {
                      return ScaleTransition(
                        scale: AlwaysStoppedAnimation<double>(
                            1.0 - (widget.iconAnimationController.value) * 0.2),
                        child: RotationTransition(

                          turns: AlwaysStoppedAnimation<double>(Tween<double>(
                                      begin: 0.0, end: 24.0)
                                  .animate(CurvedAnimation(
                                      parent: widget.iconAnimationController,
                                      curve: Curves.fastOutSlowIn))
                                  .value /
                              360),
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.amber.withOpacity(0.6),
                                    offset: const Offset(2.0, 4.0),
                                    blurRadius: 8),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(60.0)),
                              child: Image(image:  NetworkImage(
                                Constants.images[
                                Random().nextInt(Constants.images.length)],
                              ),),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 4),
                    child: Text(
                      'Omar nabil',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Divider(
            height: 1,
            color: Colors.amber.withOpacity(0.6),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(0.0),
              itemCount: drawerList.length,
              itemBuilder: (BuildContext context, int index) {
                return inkwell(drawerList[index]);
              },
            ),
          ),
          Divider(
            height: 1,
            color: Colors.white.withOpacity(0.6),
          ),
          /// ---------------------------
          /// last Item for drawer
          /// ---------------------------

          Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Log In',
                  style: TextStyle(
                    fontFamily: 'Bahij Janna',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.purple.withOpacity(0.6),
                  ),
                  textAlign: TextAlign.left,
                ),
                trailing: Icon(
                  Feather.log_in,
                  color: Colors.red,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom,
              )
            ],
          ),
        ],
      ),
    );
  }


  /// ---------------------------
  /// Getting items with click for drawer
  /// ---------------------------

  Widget inkwell(DrawerList listData) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.grey.withOpacity(0.1),
        highlightColor: Colors.transparent,
        onTap: () {
          navigationtoScreen(listData.index);
        },
        child: Stack(
          children: <Widget>[

            /// ---------------------------
            /// building item in drawer
            /// ---------------------------

            Container(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 6.0,
                    height: 46.0,
                    decoration: BoxDecoration(
                      color: widget.screenIndex == listData.index
                          ? Colors.blue
                          : Colors.transparent,
                      borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                  ),
                  listData.isAssetsImage
                      ? Container(
                          width: 24,
                          height: 24,
                          child: Image.asset(
                            listData.imageName,
                            color: widget.screenIndex == listData.index
                                ? Colors.blue
                                : Colors.purple.withOpacity(0.6),
                          ),
                        )
                      : Icon(
                          listData.icon.icon,
                          color: widget.screenIndex == listData.index
                              ? Colors.blue
                              : Colors.transparent.withOpacity(0.6),
                        ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                  ),
                  Text(
                    listData.labelName,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: widget.screenIndex == listData.index
                          ? Colors.blue
                          : Colors.transparent.withOpacity(0.6),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),

            /// ---------------------------
            /// Changing active color item when click
            /// ---------------------------

            widget.screenIndex == listData.index
                ? AnimatedBuilder(
                    animation: widget.iconAnimationController,
                    builder: (BuildContext context, Widget child) {
                      return Transform(
                        transform: Matrix4.translationValues(
                            (MediaQuery.of(context).size.width * 0.75 - 64) *
                                (1.0 -
                                    widget.iconAnimationController.value -
                                    1.0),
                            0.0,
                            0.0),
                        child: Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 8),
                          child: Container(
                            width:
                                MediaQuery.of(context).size.width * 0.75 - 64,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.2),
                              borderRadius: new BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(28),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(28),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }

  /// ---------------------------
  /// Acts action navigation for drawer item
  /// ---------------------------

  Future<void> navigationtoScreen(DrawerIndex indexScreen) async {
    widget.callBackIndex(indexScreen);
  }
}

/// ---------------------------
/// For indexing  drawer item
/// ---------------------------

enum DrawerIndex {
  HOME,
  Profile,
  Message,
  Notification,
  About,
}

/// ---------------------------
///  Drawer list item for showing
/// ---------------------------

class DrawerList {
  DrawerList({
    this.isAssetsImage = false,
    this.labelName = '',
    this.icon,
    this.index,
    this.imageName = '',
  });

  String labelName;
  Icon icon;
  bool isAssetsImage;
  String imageName;
  DrawerIndex index;
}

/// ---------------------------
///  Drawer Controller class which controls the animation and actions
/// ---------------------------

class DrawerUserController extends StatefulWidget {
  const DrawerUserController({
    Key key,
    this.drawerWidth = 250,
    this.onDrawerCall,
    this.screenView,
    this.animationController,
    this.animatedIconData = AnimatedIcons.arrow_menu,
    this.menuView,
    this.drawerIsOpen,
    this.screenIndex,
  }) : super(key: key);

  final double drawerWidth;
  final Function(DrawerIndex) onDrawerCall;
  final Widget screenView;
  final Function(AnimationController) animationController;
  final Function(bool) drawerIsOpen;
  final AnimatedIconData animatedIconData;
  final Widget menuView;
  final DrawerIndex screenIndex;

  @override
  _DrawerUserControllerState createState() => _DrawerUserControllerState();
}

class _DrawerUserControllerState extends State<DrawerUserController>
    with TickerProviderStateMixin {
  ScrollController scrollController;
  AnimationController iconAnimationController;
  AnimationController animationController;

  double scrolloffset = 0.0;
  bool isSetDawer = false;

  @override
  void initState() {

    /// ---------------------------
    ///  Inillizing all controllers for drawer .
    /// ---------------------------

    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    iconAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 0));

    iconAnimationController.animateTo(1.0,
        duration: const Duration(milliseconds: 0), curve: Curves.fastOutSlowIn);

    scrollController =
        ScrollController(initialScrollOffset: widget.drawerWidth);

    scrollController
      ..addListener(() {
        if (scrollController.offset <= 0) {
          if (scrolloffset != 1.0) {
            setState(() {
              scrolloffset = 1.0;
              try {
                widget.drawerIsOpen(true);
              } catch (_) {}
            });
          }

          iconAnimationController.animateTo(0.0,
              duration: const Duration(milliseconds: 0), curve: Curves.linear);
        } else if (scrollController.offset > 0 &&
            scrollController.offset < widget.drawerWidth) {

          iconAnimationController.animateTo(
              (scrollController.offset * 100 / (widget.drawerWidth)) / 100,
              duration: const Duration(milliseconds: 0),
              curve: Curves.linear);
        } else if (scrollController.offset <= widget.drawerWidth) {
          if (scrolloffset != 0.0) {
            setState(() {
              scrolloffset = 0.0;
              try {
                widget.drawerIsOpen(false);
              } catch (_) {}
            });
          }

          iconAnimationController.animateTo(1.0,
              duration: const Duration(milliseconds: 0), curve: Curves.linear);
        }
      });

    getInitState();

    super.initState();
  }

  /// ---------------------------
  ///  Inillizing all Durations for drawer Controllers.
  /// ---------------------------

  Future<bool> getInitState() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 300));
    try {
      widget.animationController(iconAnimationController);
    } catch (_) {}

    await Future<dynamic>.delayed(const Duration(milliseconds: 100));
    scrollController.jumpTo(
      widget.drawerWidth,
    );

    setState(() {
      isSetDawer = true;
    });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// ---------------------------
      ///  Building  Scrolling for list items drawer.
      /// ---------------------------

      body: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        physics: const PageScrollPhysics(parent: ClampingScrollPhysics()),
        child: Opacity(
          opacity: isSetDawer ? 1 : 0,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width + widget.drawerWidth,
            child: Container(
              color: Colors.green,
              child: Row(
                children: <Widget>[

                  SizedBox(
                    width: widget.drawerWidth,
                    height: MediaQuery.of(context).size.height,

                    /// ---------------------------
                    ///  Building  Animated Builder widget for changing animation state with stream .
                    /// ---------------------------

                    child: AnimatedBuilder(
                      animation: iconAnimationController,
                      builder: (BuildContext context, Widget child) {
                        return Transform(
                          transform: Matrix4.translationValues(
                              scrollController.offset, 0.0, 0.0),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: widget.drawerWidth,
                            child: HomeDrawer(
                              screenIndex: widget.screenIndex == null
                                  ? DrawerIndex.HOME
                                  : widget.screenIndex,
                              iconAnimationController: iconAnimationController,
                              callBackIndex: (DrawerIndex indexType) {
                                onDrawerClick();
                                try {
                                  widget.onDrawerCall(indexType);
                                } catch (e) {}
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  /// ---------------------------
                  /// Linking drawer with home content .
                  /// ---------------------------

                  Container(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.indigo.withOpacity(0.2),
                                blurRadius: 24),
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            IgnorePointer(
                              ignoring: scrolloffset == 1 || false,
                              child: widget.screenView == null
                                  ? Container(
                                      color: Colors.white,
                                    )
                                  : widget.screenView,
                            ),
                            scrolloffset == 1.0
                                ? InkWell(
                                    onTap: () {
                                      onDrawerClick();
                                    },
                                  )
                                : SizedBox(),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).padding.top + 8,
                                  left: 8),

                              /// ---------------------------
                              /// Making some calculations for beauty UI .
                              /// ---------------------------

                              child: SizedBox(
                                width: AppBar().preferredSize.height - 8,
                                height: AppBar().preferredSize.height - 8,
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(
                                        AppBar().preferredSize.height),
                                    child: Center(
                                      child: widget.menuView != null
                                          ? widget.menuView
                                          : AnimatedIcon(
                                              icon: widget.animatedIconData !=
                                                      null
                                                  ? widget.animatedIconData
                                                  : AnimatedIcons.arrow_menu,
                                              progress:
                                                  iconAnimationController),
                                    ),
                                    onTap: () {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      onDrawerClick();
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// ---------------------------
  /// Fun for drawer item clicked for starting shaping animation  .
  /// ---------------------------

  void onDrawerClick() {
    if (scrollController.offset != 0.0) {
      scrollController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 400),
        curve: Curves.fastOutSlowIn,
      );
    } else {
      scrollController.animateTo(
        widget.drawerWidth,
        duration: const Duration(milliseconds: 400),
        curve: Curves.fastOutSlowIn,
      );
    }
  }
}
