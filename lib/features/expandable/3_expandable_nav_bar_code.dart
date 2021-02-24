import 'package:extended_navbar_scaffold/extended_navbar_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

/// this class uses this library extended_navbar_scaffold
/// the link to it : https://pub.dev/packages/extended_navbar_scaffold#-installing-tab


class ExtendedNavBar extends StatefulWidget {
  static const routeName = '/ExtendedNavBar';
  ExtendedNavBar({Key key}) : super(key: key);

  _ExtendedNavBarState createState() => _ExtendedNavBarState();
}

class _ExtendedNavBarState extends State<ExtendedNavBar> {
  @override
  Widget build(BuildContext context) {

    /// ----------------------------------------------------------
    /// Build main content with ExtendedNavigationBarScaffold widget
    /// ----------------------------------------------------------
    return ExtendedNavigationBarScaffold(
      body: Container(
        color: Colors.deepOrange,
      ),
      appBar: AppBar(
        shape: kAppbarShape,
        leading: IconButton(
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Extended Scaffold Example',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      elevation: 0,
      floatingAppBar: true,

      navBarColor: Colors.white,
      navBarIconColor: Colors.black,
      moreButtons: [

        /// ----------------------------------------------------------
        /// Build  item content with MoreButtonModel widget
        /// ----------------------------------------------------------
        MoreButtonModel(
          icon: MaterialCommunityIcons.wallet,
          label: 'Wallet',
          onTap: () {},
        ),
        MoreButtonModel(
          icon: MaterialCommunityIcons.parking,
          label: 'My Bookings',
          onTap: () {},
        ),
        MoreButtonModel(
          icon: MaterialCommunityIcons.car_multiple,
          label: 'My Cars',
          onTap: () {},
        ),
        MoreButtonModel(
          icon: FontAwesome.book,
          label: 'Transactions',
          onTap: () {},
        ),
        MoreButtonModel(
          icon: MaterialCommunityIcons.home_map_marker,
          label: 'Offer Parking',
          onTap: () {},
        ),
        MoreButtonModel(
          icon: Feather.user,
          label: 'Profile',
          onTap: () {},
        ),
        null,
        MoreButtonModel(
          icon: Icons.settings,
          label: 'Settings',
          onTap: () {},
        ),
        null,
      ],
      searchWidget: Container(
        height: 50,
        color: Colors.redAccent,
      ),
      // onTap: (button) {},
      // currentBottomBarCenterPercent: (currentBottomBarParallexPercent) {},
      // currentBottomBarMorePercent: (currentBottomBarMorePercent) {},
      // currentBottomBarSearchPercent: (currentBottomBarSearchPercent) {},
      /// ----------------------------------------------------------
      /// PageTransformer widget for changing content
      /// ----------------------------------------------------------
      parallexCardPageTransformer: PageTransformer(
        pageViewBuilder: (context, visibilityResolver) {
          return PageView.builder(
            controller: PageController(viewportFraction: 0.85),
            itemCount: parallaxCardItemsList.length,
            itemBuilder: (context, index) {
              final item = parallaxCardItemsList[index];
              final pageVisibility =
              visibilityResolver.resolvePageVisibility(index);
              return ParallaxCardsWidget(
                item: item,
                pageVisibility: pageVisibility,
              );
            },
          );
        },
      ),
    );
  }

  /// ----------------------------------------------------------
  /// ParallaxCardItem widget for list content
  /// ----------------------------------------------------------
  final parallaxCardItemsList = <ParallaxCardItem>[
    ParallaxCardItem(
        title: 'Some Random Route 1',
        body: 'Place 1',
        background: Container(
          color: Colors.orange,
        )),
    ParallaxCardItem(
        title: 'Some Random Route 2',
        body: 'Place 2',
        background: Container(
          color: Colors.redAccent,
        )),
    ParallaxCardItem(
        title: 'Some Random Route 3',
        body: 'Place 1',
        background: Container(
          color: Colors.blue,
        )),
  ];
}
