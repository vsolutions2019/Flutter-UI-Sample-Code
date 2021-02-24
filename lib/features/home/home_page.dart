import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterxui/consts.dart';
import 'package:flutterxui/features/about/about_page_1_code.dart';
import 'package:flutterxui/features/about/about_page_2_code.dart';
import 'package:flutterxui/features/about/about_page_3_code.dart';
import 'package:flutterxui/features/about/about_page_4_code.dart';
import 'package:flutterxui/features/article/card_article_code.dart';
import 'package:flutterxui/features/article/food_article_code.dart';
import 'package:flutterxui/features/article/header_image_code.dart';
import 'package:flutterxui/features/article/medium_code.dart';
import 'package:flutterxui/features/article/simple_code.dart';
import 'package:flutterxui/features/bottom_navigation/animation_bottom_bar_code.dart';
import 'package:flutterxui/features/bottom_navigation/bottom_navibar_page_code.dart';
import 'package:flutterxui/features/bottom_navigation/bottom_navybar_page_code.dart';
import 'package:flutterxui/features/bottom_navigation/curved_navigationbar_page_code.dart';
import 'package:flutterxui/features/bottom_navigation/fancy_bottom_navigation_page_code.dart';
import 'package:flutterxui/features/bottom_navigation/flip_navigation_bar_page_code.dart';
import 'package:flutterxui/features/bottom_navigation/titled_navigation_bar_page_code.dart';
import 'package:flutterxui/features/button/flat_button_code.dart';
import 'package:flutterxui/features/button/floating_action_button_code.dart';
import 'package:flutterxui/features/button/like_button_code.dart';
import 'package:flutterxui/features/button/raised_button_code.dart';
import 'package:flutterxui/features/dialog/awesome_dialog_page_code.dart';
import 'package:flutterxui/features/dialog/sample_dialog_code.dart';
import 'package:flutterxui/features/drawer/collapsible_drawer_code.dart';
import 'package:flutterxui/features/drawer/custom_drawer_code.dart';
import 'package:flutterxui/features/drawer/dark_shaped_drawer_code.dart';
import 'package:flutterxui/features/drawer/hidden_menu_drawer_code.dart';
import 'package:flutterxui/features/drawer/light_shaped_drawer_code.dart';
import 'package:flutterxui/features/drawer/reside_menu_drawer_code.dart';
import 'package:flutterxui/features/drawer/simple_drawer_code.dart';
import 'package:flutterxui/features/dropdown/dropown_searchable_code.dart';
import 'package:flutterxui/features/dropdown/general_dropdown_code.dart';
import 'package:flutterxui/features/expandable/1_simple_expandable_code.dart';
import 'package:flutterxui/features/expandable/2_expandable_header_code.dart';
import 'package:flutterxui/features/expandable/3_expandable_nav_bar_code.dart';
import 'package:flutterxui/features/expandable/4_round_menu_expandable_code.dart';
import 'package:flutterxui/features/grid/1_simple_grid_code.dart';
import 'package:flutterxui/features/grid/2_custom_grid_code.dart';
import 'package:flutterxui/features/grid/3_custome_grid_code.dart';
import 'package:flutterxui/features/grid/4_animated_grid_code.dart';
import 'package:flutterxui/features/image/custom_image_code.dart';
import 'package:flutterxui/features/image/general_image_code.dart';
import 'package:flutterxui/features/image/popup_image_code.dart';
import 'package:flutterxui/features/intro/1_intro_views_code.dart';
import 'package:flutterxui/features/intro/2_intro_concentric_transition_code.dart';
import 'package:flutterxui/features/intro/3_intro_overboard_code.dart';
import 'package:flutterxui/features/list/bouncy_list_code.dart';
import 'package:flutterxui/features/list/challange_list_code.dart';
import 'package:flutterxui/features/list/expandable_list_code.dart';
import 'package:flutterxui/features/list/reorderable_list_code.dart';
import 'package:flutterxui/features/list/selection_list_code.dart';
import 'package:flutterxui/features/list/simple_list_code.dart';
import 'package:flutterxui/features/list/slidable_list_code.dart';
import 'package:flutterxui/features/list/swipable_list_code.dart';
import 'package:flutterxui/features/list/wheel_scroll_list_code.dart';
import 'package:flutterxui/features/login/10_login_code.dart';
import 'package:flutterxui/features/login/11_login_code.dart';
import 'package:flutterxui/features/login/1_login_code.dart';
import 'package:flutterxui/features/login/4_login_code.dart';
import 'package:flutterxui/features/login/5_login_code.dart';
import 'package:flutterxui/features/login/6_splashscreen.dart';
import 'package:flutterxui/features/login/7_login_code.dart';
import 'package:flutterxui/features/login/8_login_code.dart';
import 'package:flutterxui/features/no_item/no_connection_code.dart';
import 'package:flutterxui/features/no_item/no_connection_image_code.dart';
import 'package:flutterxui/features/no_item/no_item_search_code.dart';
import 'package:flutterxui/features/others/animated_crossfade_widget_code.dart';
import 'package:flutterxui/features/others/animated_text_kit_code.dart';
import 'package:flutterxui/features/others/backdrop_filter_code.dart';
import 'package:flutterxui/features/others/color_filtered_widget_code.dart';
import 'package:flutterxui/features/others/draggable_scrollable_sheet_code.dart';
import 'package:flutterxui/features/others/progress_button_code.dart';
import 'package:flutterxui/features/others/shadermask_widget_code.dart';
import 'package:flutterxui/features/others/sliver_app_bar_code.dart';
import 'package:flutterxui/features/others/toggle_buttons_code.dart';
import 'package:flutterxui/features/others/tween_animation_builder_code.dart';
import 'package:flutterxui/features/pickers/date_dark_page_code.dart';
import 'package:flutterxui/features/pickers/date_light_page_code.dart';
import 'package:flutterxui/features/pickers/time_dark_page_code.dart';
import 'package:flutterxui/features/pickers/time_light_page_code.dart';
import 'package:flutterxui/features/profile/profile_page_1_code.dart';
import 'package:flutterxui/features/profile/profile_page_2_code.dart';
import 'package:flutterxui/features/profile/profile_page_3_code.dart';
import 'package:flutterxui/features/profile/profile_page_4_code.dart';
import 'package:flutterxui/features/profile/profile_page_5_code.dart';
import 'package:flutterxui/features/profile/profile_page_6_code.dart';
import 'package:flutterxui/features/profile/profile_page_7_code.dart';
import 'package:flutterxui/features/progress/circular_percent_indicator_code.dart';
import 'package:flutterxui/features/progress/custom_progress.dart';
import 'package:flutterxui/features/progress/linear_percent_indicator_code.dart';
import 'package:flutterxui/features/progress/progress_code.dart';
import 'package:flutterxui/features/search_bar/search_page_1_code.dart';
import 'package:flutterxui/features/search_bar/search_page_2_code.dart';
import 'package:flutterxui/features/settings/1_settings_code.dart';
import 'package:flutterxui/features/settings/2_settings_code.dart';
import 'package:flutterxui/features/settings/3_settings_code.dart';
import 'package:flutterxui/features/settings/4_settings_code.dart';
import 'package:flutterxui/features/sliders/1_pager_slider_code.dart';
import 'package:flutterxui/features/sliders/2_pager_slider_code.dart';
import 'package:flutterxui/features/sliders/3_pager_slider_code.dart';
import 'package:flutterxui/features/tabs/tab_page_1_code.dart';
import 'package:flutterxui/features/tabs/tab_page_2_code.dart';
import 'package:flutterxui/features/tabs/tab_page_3_code.dart';
import 'package:flutterxui/features/tabs/tab_page_4_code.dart';
import 'package:flutterxui/features/text/property_text_code.dart';
import 'package:flutterxui/features/text_field/border_text_field_code.dart';
import 'package:flutterxui/features/text_field/property_text_field_code.dart';
import 'package:flutterxui/features/text_field/text_field_code.dart';
import 'package:flutterxui/features/toast/1_simple_toast_code.dart';
import 'package:flutterxui/features/toast/2_styled_toast_code.dart';
import 'package:flutterxui/features/toast/3_load_toast_code.dart';
import 'package:flutterxui/features/toast/4_achievement_toast_code.dart';
import 'package:flutterxui/features/welcome_page/1_welcome_page_code.dart';
import 'package:flutterxui/features/welcome_page/9_welcome_page_code.dart';
import 'package:flutterxui/res/text_style.dart';
import 'package:flutterxui/res/utils.dart';
import 'package:flutterxui/res/width_height.dart';


const String testDevice = '';

class HomePage extends StatefulWidget {
  static const routeName = '/homePage';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {

    super.dispose();

  }

  @override
  Widget build(BuildContext context) {

    double width = globalSize.setWidthPercentage(100, context);
    double height = globalSize.setHeightPercentage(100, context);

    return Scaffold(
      backgroundColor: utils.getThem().backgroundHome,
      appBar: Constants.appBar(context, "${Constants.appName}", false),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //=========================
            //     For Logo
            //=========================
            Container(
              height: height * .2,
              width: width,
              child: Image.asset('assets/images/logo_home.png',width:ScreenUtil().setWidth(300),height: ScreenUtil().setHeight(200),fit: BoxFit.cover,),
            ),

            //=========================
            //     Widget  section
            //=========================
            Container(
              width: width * .9,
              child: Column(
                children: <Widget>[
                  //=========================
                  //build text field section
                  //=========================
                  _buildSectionTextField(),

                  //========================
                  //      Progress
                  //========================
                  _buildSectionProgress(),

                  //========================
                  //      Text
                  //========================
                  _buildSectionText(),

                  //========================
                  //      Button
                  //========================
                  _buildSectionButton(),

                  //========================
                  //      Drawer
                  //========================
                  _buildSectionDrawer(),

                  //========================
                  //      Lists
                  //========================
                  _buildSectionListView(),

                  //========================
                  //      Image
                  //========================
                  _buildSectionImage(),

                  //========================
                  //      DropDown
                  //========================
                  _buildSectionDropDown(),

                  //========================
                  //      ButtonNavigationBar
                  //========================
                  _buildSectionButtonNavigationBar(),

                  //========================
                  //      Dialog
                  //========================
                  _buildSectionDialog(),
                  //========================
                  //      Toast
                  //========================
                  _buildSectionToast(),

                  //========================
                  //      Tab Bar
                  //========================
                  _buildSectionTabs(),

                  //========================
                  //      DropDown
                  //      Expandable

                  //========================
                  _buildSectionExpandable(),

                  //========================
                  //      DropDown
                  //========================
                  _buildSectionSearch(),

                  //========================
                  //      Grid
                  //========================
                  _buildSectionGrid(),

                  //========================
                  //      Pages sliders
                  //========================
                  _buildSectionPagesSliders(),

                  //========================
                  //     Mixin Widgets
                  //========================
                  _buildSectionMixinWidgets(),

                  //========================
                  //      Sign in and Sign up
                  //========================
                  _buildSectionSignInAndSignUp(),

                  //========================
                  //      Pickers
                  //========================
                  _buildSectionPickers(),

                  //========================
                  //      Articles
                  //========================
                  _buildSectionArticles(),

                  //========================
                  //      Profile
                  //========================
                  _buildSectionProfile(),

                  //========================
                  //      Aboutus
                  //========================
                  _buildSectionAbout(),

                  //========================
                  //      Profile
                  //========================
                  _buildSectionNoItem(),

                  //========================
                  //      Settings
                  //========================
                  _buildSectionSettings(),

                  //========================
                  //      Settings
                  //========================
                  _buildSectionIntros(),
                ],
              ),
            ),

            SizedBox(
              height: calculateBottomPadding(height),
            )
          ],
        ),
      ),
    );
  }

  double calculateBottomPadding(double height) =>
      height <= 400 ? 32 : (height <= 720 ? 50 : 90);

  _buildSectionTextField() {
    return _buildExpansionSection(
      title: _buildTitle(title: 'Text Field', iconData: Icons.text_fields),
      children: <Widget>[
        //=======================
        //   general text field
        //=======================
        _buildSubSectionButton(
            context: context,
            title: 'General Text Field',
            navigatePage: BasicTextField.routeName,
            sourceFilePath: 'lib/dart_code/text_field/text_field_code.dart'),

        divider(),

        //=======================
        //   border text field
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Border Text Field',
          navigatePage: TextFieldBorder.routeName,
          sourceFilePath:
              'lib/dart_code/text_field/border_text_field_code.dart',
        ),
        divider(),

        //=======================
        //   border text field
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Property Text Field',
          navigatePage: TextFieldProperty.routeName,
          sourceFilePath:
              'lib/dart_code/text_field/property_text_field_code.dart',
        ),
      ],
    );
  }

  _buildSectionProgress() {
    return _buildExpansionSection(
      title: _buildTitle(title: 'Progress', iconData: Feather.loader),
      children: <Widget>[
        //=======================
        //   spinkit lib
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'SpinKit',
          navigatePage: Progress.routeName,
          sourceFilePath: 'lib/dart_code/progress/progress_code.dart',
        ),

        divider(),

        //=======================
        //   CircularPercent lib
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Circular Percent Indicator',
          navigatePage: CircularPercent.routeName,
          sourceFilePath:
              'lib/dart_code/progress/circular_percent_indicator_code.dart',
        ),

        divider(),

        //=======================
        //   LinearPercent lib
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Linear Percent Indicator',
          navigatePage: LinearPercent.routeName,
          sourceFilePath:
              'lib/dart_code/progress/linear_percent_indicator_code.dart',
        ),

        divider(),

        //=======================
        //   LinearPercent lib
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'CustomProgress Indicator',
          navigatePage: CustomProgress.routeName,
          sourceFilePath: 'lib/dart_code/progress/custom_progress.dart',
        ),
      ],
    );
  }

  _buildSectionText() {
    return _buildExpansionSection(
      title: _buildTitle(title: 'Text', iconData: Entypo.text),
      children: <Widget>[
        //=======================
        //   Text
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Text Property Demo',
          navigatePage: TextProperty.routeName,
          sourceFilePath: 'lib/dart_code/text/property_text_code.dart',
        ),
      ],
    );
  }

  _buildSectionButton() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'Button',
          iconData: MaterialCommunityIcons.cursor_default_click_outline),
      children: <Widget>[
        //=======================
        //   Flat Button
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Flat Button',
          navigatePage: FlatButtons.routeName,
          sourceFilePath: 'lib/dart_code/button/flat_button_code.dart',
        ),

        divider(),

        //=======================
        //   Flat Button
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Raised button',
          navigatePage: ButtonRaised.routeName,
          sourceFilePath: 'lib/dart_code/button/raised_button_code.dart',
        ),

        divider(),

        //=======================
        //   Floating Action Button
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Floating Action Button',
          navigatePage: FloatingActionButtons.routeName,
          sourceFilePath:
              'lib/dart_code/button/floating_action_button_code.dart',
        ),

        divider(),

        //=======================
        //   Social Button
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Like Bottom',
          navigatePage: LikeButtonPage.routeName,
          sourceFilePath: 'lib/dart_code/button/like_button_code.dart',
        ),
      ],
    );
  }

  _buildSectionDrawer() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'Drawer', iconData: MaterialCommunityIcons.move_resize),
      children: <Widget>[
        //=======================
        //   simple drawer
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Simple drawer',
          navigatePage: SimpleDrawer.routeName,
          sourceFilePath: 'lib/dart_code/drawer/simple_drawer_code.dart',
        ),

        divider(),

        //=======================
        //   Reside menu
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Reside menu',
          navigatePage: ResideMenuPage.routeName,
          sourceFilePath: 'lib/dart_code/drawer/reside_menu_drawer_code.dart',
        ),

        divider(),

        //=======================
        //   Animated drawer
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Animated drawer',
          navigatePage: AnimatedDrawer.routeName,
          sourceFilePath: 'lib/dart_code/drawer/custom_drawer_code.dart',
        ),

        divider(),

        //=======================
        //   Hidden drawer
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Hidden drawer',
          navigatePage: HiddenMenu.routeName,
          sourceFilePath: 'lib/dart_code/drawer/hidden_menu_drawer_code.dart',
        ),

        divider(),

        //=======================
        //   Light Shaped  drawer
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Light shaped drawer',
          navigatePage: LightDrawerPage.routeName,
          sourceFilePath: 'lib/dart_code/drawer/light_shaped_drawer_code.dart',
        ),

        divider(),

        //=======================
        //   Dark Shaped  drawer
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Dark shaped drawer',
          navigatePage: DarkDrawerPage.routeName,
          sourceFilePath: 'lib/dart_code/drawer/dark_shaped_drawer_code.dart',
        ),

        divider(),

        //=======================
        //   Collapsible  drawer
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Collapsing drawer',
          navigatePage: CollapsingDrawer.routeName,
          sourceFilePath: 'lib/dart_code/drawer/collapsible_drawer_code.dart',
        ),
      ],
    );
  }

  _buildSectionListView() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'Lists', iconData: MaterialCommunityIcons.view_list),
      children: <Widget>[
        //=======================
        //   simple list
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Simple List',
          navigatePage: SimpleList.routeName,
          sourceFilePath: 'lib/dart_code/list/simple_list_code.dart',
        ),

        divider(),

        //=======================
        //   BouncyList List
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'BouncyList List',
          navigatePage: BouncyList.routeName,
          sourceFilePath: 'lib/dart_code/list/bouncy_list_code.dart',
        ),

        divider(),

        //=======================
        //   SlidableList List
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Slidable List',
          navigatePage: SlidableList.routeName,
          sourceFilePath: 'lib/dart_code/list/slidable_list_code.dart',
        ),

        divider(),

        //=======================
        //   SwipeableList List
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Swipeable List',
          navigatePage: SwipeableList.routeName,
          sourceFilePath: 'lib/dart_code/list/swipable_list_code.dart',
        ),
        divider(),

        //=======================
        //   Reorderable List  List
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Reorderable List',
          navigatePage: ReorderableListDemo.routeName,
          sourceFilePath: 'lib/dart_code/list/reorderable_list_code.dart',
        ),

        divider(),

        //=======================
        //   Custom Changing List
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Custom Changing List',
          navigatePage: CustomChangingList.routeName,
          sourceFilePath: 'lib/dart_code/list/challange_list_code.dart',
        ),
        divider(),

        //=======================
        //   Selection List
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Selection List',
          navigatePage: SelectionList.routeName,
          sourceFilePath: 'lib/dart_code/list/selection_list_code.dart',
        ),
        divider(),
        //=======================
        //   simple List
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Wheel Scroll List',
          navigatePage: ListWheelScroll.routeName,
          sourceFilePath: 'lib/dart_code/list/wheel_scroll_list_code.dart',
        ),
        divider(),

        //=======================
        //   Expandable List
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Expandable List',
          navigatePage: ExpandableList.routeName,
          sourceFilePath: 'lib/dart_code/list/expandable_list_code.dart',
        ),
      ],
    );
  }

  _buildSectionSignInAndSignUp() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'Auth', iconData: MaterialCommunityIcons.login_variant),
      children: <Widget>[
        //=======================
        //   log in with sign up 1
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'sign in and sign up 1',
          navigatePage: LoginPage1.routeName,
          sourceFilePath: 'lib/dart_code/login/1_login_code.dart',
        ),

        divider(),
        //=======================
        //   log in with sign up 2
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'sign in and sign up 2',
          navigatePage: WelcomePage.routeName,
          sourceFilePath: 'lib/dart_code/welcome_page/1_welcome_page_code.dart',
        ),

        divider(),


        //=======================
        //   log in with sign up 4
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'sign in and sign up 4',
          navigatePage: DarkLoginPage.routeName,
          sourceFilePath: 'lib/dart_code/login/4_login_code.dart',
        ),

        divider(),
        //=======================
        //   log in with sign up 5
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'sign in and sign up 5',
          navigatePage: LoginPage5.routeName,
          sourceFilePath: 'lib/dart_code/login/5_login_code.dart',
        ),

        divider(),
//        =======================
//           log in with sign up 6
//        =======================
        _buildSubSectionButton(
          context: context,
          title: 'sign in and sign up 6',
          navigatePage: SplashScreen_6.routeName,
          sourceFilePath: 'lib/dart_code/welcome_page/6_splashscreen.dart',
        ),

        divider(),

        //=======================
        //   log in with sign up 7
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'sign in 7',
          navigatePage: LoginPage7.routeName,
          sourceFilePath: 'lib/dart_code/login/7_login_code.dart',
        ),

        divider(),

        //=======================
        //   log in with sign up 8
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'sign in 8',
          navigatePage: LoginPag8.routeName,
          sourceFilePath: 'lib/dart_code/login/8_login_code.dart',
        ),

        divider(),

        //=======================
        //   log in with welcome 9
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'welcome 9',
          navigatePage: AuthThreePage.routeName,
          sourceFilePath: 'lib/dart_code/welcome_page/9_welcome_page_code.dart',
        ),

        divider(),
        //=======================
        //   log in with sign up 10
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'sign in 10',
          navigatePage: LoginPage10.routeName,
          sourceFilePath: 'lib/dart_code/login/10_login_code.dart',
        ),

        divider(),

        //=======================
        //   log in with sign up 11
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'sign in 11',
          navigatePage: LoginPage11.routeName,
          sourceFilePath: 'lib/dart_code/login/11_login_code.dart',
        ),
      ],
    );
  }

  _buildSectionImage() {
    return _buildExpansionSection(
      title: _buildTitle(title: 'Image', iconData: Entypo.image),
      children: <Widget>[
        //=======================
        //  General image
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'General Image',
          navigatePage: Images.routeName,
          sourceFilePath: 'lib/dart_code/image/general_image_code.dart',
        ),

        divider(),

        //=======================
        //  Custom image
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Custom Image',
          navigatePage: ImageCustom.routeName,
          sourceFilePath: 'lib/dart_code/image/custom_image_code.dart',
        ),

        divider(),

        //=======================
        //  Popup image
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Popup Image',
          navigatePage: ImagePopup.routeName,
          sourceFilePath: 'lib/dart_code/image/popup_image_code.dart',
        ),
      ],
    );
  }

  _buildSectionTabs() {
    return _buildExpansionSection(
      title:
          _buildTitle(title: 'Tab Bar', iconData: MaterialIcons.tab_unselected),
      children: <Widget>[
        //=======================
        //  Simple Tab
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Simple Tab',
          navigatePage: SimpleTab.routeName,
          sourceFilePath: 'lib/dart_code/tabs/tab_page_1_code.dart',
        ),

        divider(),

        //=========================
        //  Title With Icon Tab
        //=========================
        _buildSubSectionButton(
          context: context,
          title: 'Title With Icon Tab',
          navigatePage: SimpleTabWithIcon.routeName,
          sourceFilePath: 'lib/dart_code/tabs/tab_page_2_code.dart',
        ),

        divider(),

        //=========================
        //   Icon Tab
        //=========================
        _buildSubSectionButton(
          context: context,
          title: 'Icon Tab',
          navigatePage: IconTab.routeName,
          sourceFilePath: 'lib/dart_code/tabs/tab_page_3_code.dart',
        ),

        divider(),

        //=========================
        //  Scrollable Tab
        //=========================
        _buildSubSectionButton(
          context: context,
          title: 'Scrollable Tab',
          navigatePage: ScrollableTab.routeName,
          sourceFilePath: 'lib/dart_code/tabs/tab_page_4_code.dart',
        ),
      ],
    );
  }

  _buildSectionSearch() {
    return _buildExpansionSection(
      title: _buildTitle(title: 'SearchBar', iconData: Feather.search),
      children: <Widget>[
        //=======================
        //  SearchPage1
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Simple SearchBar',
          navigatePage: SimpleSearch.routeName,
          sourceFilePath: 'lib/dart_code/search_bar/search_page_1_code.dart',
        ),

        divider(),

        //=======================
        //  SearchPage2
        //=======================
        _buildSubSectionButton(
          context: context,
          title: ' Search Toolbar',
          navigatePage: ToolbarSearch.routeName,
          sourceFilePath: 'lib/dart_code/search_bar/search_page_2_code.dart',
        ),

        divider(),
      ],
    );
  }

  _buildSectionDropDown() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'DropDown', iconData: MaterialIcons.arrow_drop_down_circle),
      children: <Widget>[
        //=======================
        //  General DropDown
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'General DropDown',
          navigatePage: DropdownGeneral.routeName,
          sourceFilePath: 'lib/dart_code/dropdown/general_dropdown_code.dart',
        ),

        divider(),

        //=======================
        //  Searchable Dropdown
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Searchable Dropdown',
          navigatePage: DropdownSearchable.routeName,
          sourceFilePath: 'lib/dart_code/dropdown/dropown_searchable_code.dart',
        ),
      ],
    );
  }

  _buildSectionDialog() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'Dialog', iconData: MaterialCommunityIcons.card_text_outline),
      children: <Widget>[
        //=======================
        //   Sample Dialog
        //=======================
        _buildSubSectionButton(
          context: context,
          title: 'Sample Dialog',
          navigatePage: SampleDialog.routeName,
          sourceFilePath: 'lib/dart_code/dialog/sample_dialog_code.dart',
        ),

        divider(),

        // =======================
        //   Awesome Dialog
        // =======================
        _buildSubSectionButton(
          context: context,
          title: 'Awesome Dialog',
          navigatePage: AwesomeDialogScreen.routeName,
          sourceFilePath: 'lib/dart_code/dialog/awesome_dialog_page_code.dart',
        ),
      ],
    );
  }

  _buildSectionButtonNavigationBar() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'Bottom NavigationBar',
          iconData: MaterialCommunityIcons.table_row),
      children: <Widget>[
        //==================================
        //   Animation  Button Navigation
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Curved Bottom Navigation',
          navigatePage: BottomNavBar.routeName,
          sourceFilePath:
              'lib/dart_code/bottom_navigation/curved_navigationbar_page_code.dart',
        ),

        divider(),

        //==================================
        //   Animation  Button Navigation
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Bottom Navy Bar',
          navigatePage: BottomNavyBarPage.routeName,
          sourceFilePath:
              'lib/dart_code/bottom_navigation/bottom_navybar_page_code.dart',
        ),

        divider(),

        //==================================
        //   Animation  Button Navigation
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Animation Bottom Navigation',
          navigatePage: AnimatedBottomBar.routeName,
          sourceFilePath:
              'lib/dart_code/bottom_navigation/animation_bottom_bar_code.dart',
        ),

        divider(),
        //==================================
        //   Animation  Button Navigation
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Title Bottom Navigation',
          navigatePage: TitledNavigationBottomPage.routeName,
          sourceFilePath:
              'lib/dart_code/bottom_navigation/titled_navigation_bar_page_code.dart',
        ),

        divider(),

        //==================================
        //   Animation  Button Navigation
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Fancy Bottom Nav',
          navigatePage: FancyBottomNavigationPage.routeName,
          sourceFilePath:
              'lib/dart_code/bottom_navigation/fancy_bottom_navigation_page_code.dart',
        ),

        divider(),

        //==================================
        //   Animation  Button Navigation
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Flip Navigation Bar',
          navigatePage: FlipBottomNavigationBarPage.routeName,
          sourceFilePath:
              'lib/dart_code/bottom_navigation/flip_navigation_bar_page_code.dart',
        ),

        divider(),

        //==================================
        //     Button Navigation
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Bottom Navigation',
          navigatePage: MainBotttomNaviWidget.routeName,
          sourceFilePath:
              'lib/dart_code/bottom_navigation/bottom_navibar_page_code.dart',
        ),
      ],
    );
  }

  _buildSectionArticles() {
    return _buildExpansionSection(
      title: _buildTitle(title: 'Articles UI', iconData: AntDesign.filetext1),
      children: <Widget>[
        //==================================
        //   Simple Article
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Simple Article',
          navigatePage: SimpleArticle.routeName,
          sourceFilePath: 'lib/dart_code/article/simple_code.dart',
        ),

        divider(),

        //==================================
        //   Food Article
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Food Article',
          navigatePage: FoodArticle.routeName,
          sourceFilePath: 'lib/dart_code/article/food_article_code.dart',
        ),

        divider(),

        //==================================
        //   Medium Article
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Medium Article',
          navigatePage: MediumArticle.routeName,
          sourceFilePath: 'lib/dart_code/article/medium_code.dart',
        ),

        divider(),

        //==================================
        //   Header Image Article
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Header Image Article',
          navigatePage: HeaderArticle.routeName,
          sourceFilePath: 'lib/dart_code/article/header_image_code.dart',
        ),

        divider(),

        //==================================
        //   Card Article
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Card Article',
          navigatePage: CardArticle.routeName,
          sourceFilePath: 'lib/dart_code/article/card_article_code.dart',
        ),
      ],
    );
  }

  _buildSectionProfile() {
    return _buildExpansionSection(
      title: _buildTitle(title: 'Profile UI', iconData: AntDesign.profile),
      children: <Widget>[
        //==================================
        //   Profile Page1
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Profile 1',
          navigatePage: Profile6.routeName,
          sourceFilePath: 'lib/dart_code/profile/profile_page_6_code.dart',
        ),

        divider(),

        //==================================
        //   Profile Page2
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Profile 2',
          navigatePage: Profile1.routeName,
          sourceFilePath: 'lib/dart_code/profile/profile_page_1_code.dart',
        ),

        divider(),

        //==================================
        //   Profile Page3
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Profile 3',
          navigatePage: Profile4.routeName,
          sourceFilePath: 'lib/dart_code/profile/profile_page_4_code.dart',
        ),

        divider(),

        //==================================
        //   Profile Page4
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Profile 4',
          navigatePage: Profile2.routeName,
          sourceFilePath: 'lib/dart_code/profile/profile_page_2_code.dart',
        ),

        divider(),

        //==================================
        //   Profile Page5
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Profile 5',
          navigatePage: Profile3.routeName,
          sourceFilePath: 'lib/dart_code/profile/profile_page_3_code.dart',
        ),

        divider(),

        //==================================
        //   Profile Page6
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Profile 6',
          navigatePage: Profile5.routeName,
          sourceFilePath: 'lib/dart_code/profile/profile_page_5_code.dart',
        ),

        divider(),

        //==================================
        //   Profile Page2
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Profile 7',
          navigatePage: Profile7.routeName,
          sourceFilePath: 'lib/dart_code/profile/profile_page_7_code.dart',
        ),
      ],
    );
  }

  _buildSectionAbout() {
    return _buildExpansionSection(
      title: _buildTitle(title: 'About UI', iconData: AntDesign.infocirlceo),
      children: <Widget>[
        //==================================
        //    About Page1
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'About 1',
          navigatePage: About1.routeName,
          sourceFilePath: 'lib/dart_code/about/about_page_1_code.dart',
        ),

        divider(),

        //==================================
        //    About Page2
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'About 2',
          navigatePage: About2.routeName,
          sourceFilePath: 'lib/dart_code/about/about_page_2_code.dart',
        ),

        divider(),

        //==================================
        //    About Page3
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'About 3',
          navigatePage: About3.routeName,
          sourceFilePath: 'lib/dart_code/about/about_page_3_code.dart',
        ),

        divider(),

        //==================================
        //   About Page4
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'About 4',
          navigatePage: AboutDialog4.routeName,
          sourceFilePath: 'lib/dart_code/about/about_page_4_code.dart',
        ),
      ],
    );
  }

  _buildSectionPickers() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'Pickers', iconData: MaterialCommunityIcons.calendar_clock),
      children: <Widget>[
        //==================================
        //    Date Light
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Date Light',
          navigatePage: DateLight.routeName,
          sourceFilePath: 'lib/dart_code/pickers/date_light_page_code.dart',
        ),
        divider(),

        //==================================
        //    Date Dark
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Date Dark',
          navigatePage: DateDark.routeName,
          sourceFilePath: 'lib/dart_code/pickers/date_dark_page_code.dart',
        ),
        divider(),

        //==================================
        //    Time Light
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Time Light',
          navigatePage: TimeLight.routeName,
          sourceFilePath: 'lib/dart_code/pickers/time_light_page_code.dart',
        ),
        divider(),

        //==================================
        //    Time Dark
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Time Dark',
          navigatePage: TimeDark.routeName,
          sourceFilePath: 'lib/dart_code/pickers/time_dark_page_code.dart',
        ),
      ],
    );
  }

  _buildSectionNoItem() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'No Item Page', iconData: MaterialIcons.do_not_disturb_off),
      children: <Widget>[
        //==================================
        //    Date Light
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'No Result Search',
          navigatePage: NoItemSearch.routeName,
          sourceFilePath: 'lib/dart_code/no_item/no_item_search_code.dart',
        ),
        divider(),

        //==================================
        //    Date Light
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'No Connection',
          navigatePage: NoConnection.routeName,
          sourceFilePath: 'lib/dart_code/no_item/no_connection_code.dart',
        ),
        divider(),

        //==================================
        //    Date Light
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'No Connection Image',
          navigatePage: NoConnectionImage.routeName,
          sourceFilePath: 'lib/dart_code/no_item/no_connection_image_code.dart',
        ),
      ],
    );
  }

  _buildSectionPagesSliders() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'Pages Sliders',
          iconData: MaterialCommunityIcons.page_layout_sidebar_left),
      children: <Widget>[
        //==================================
        //   Sliders 1
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Sliders 1',
          navigatePage: SlidersPage_1.routeName,
          sourceFilePath: 'lib/dart_code/sliders/1_pager_slider_code.dart',
        ),
        divider(),

        //==================================
        //   Slider 2
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Sliders 2',
          navigatePage: PageViewWithDotIndicator_.routeName,
          sourceFilePath: 'lib/dart_code/sliders/2_pager_slider_code.dart',
        ),
        divider(),

        //==================================
        //   Slider 3
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Sliders 3',
          navigatePage: SlidersPage.routeName,
          sourceFilePath: 'lib/dart_code/sliders/3_pager_slider_code.dart',
        ),
      ],
    );
  }

  _buildSectionMixinWidgets() {
    return _buildExpansionSection(
      title:
          _buildTitle(title: 'Mixin Widgets', iconData: FontAwesome5Brands.mix),
      children: <Widget>[
        //==================================
        //   Color Filtered Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Color Filtered Widget',
          navigatePage: ColorFilteredWidget.routeName,
          sourceFilePath:
              'lib/dart_code/others/color_filtered_widget_code.dart',
        ),
        divider(),

        //==================================
        //   Toggle Buttons Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Toggle Buttons Widget',
          navigatePage: ToggleButtonsWidget.routeName,
          sourceFilePath: 'lib/dart_code/others/toggle_buttons_code.dart',
        ),
        divider(),
        //==================================
        //   Backdrop Filter Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Backdrop Filter Widget',
          navigatePage: BackdropFilterWidget.routeName,
          sourceFilePath: 'lib/dart_code/others/backdrop_filter_code.dart',
        ),
        divider(),
        //==================================
        //   Draggable Scrollable Sheet Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Draggable Scrollable Sheet Widget',
          navigatePage: DraggableScrollableSheetWidget.routeName,
          sourceFilePath:
              'lib/dart_code/others/draggable_scrollable_sheet_code.dart',
        ),
        divider(),

        //==================================
        //   Animated Cross Fade Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Animated Cross Fade Widget',
          navigatePage: AnimatedCrossFadeWidget.routeName,
          sourceFilePath:
              'lib/dart_code/others/animated_crossfade_widget_code.dart',
        ),
        divider(),
        //==================================
        //   Tween AnimationBuilderWidget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Tween Animation Builder Widget',
          navigatePage: TweenAnimationBuilderWidget.routeName,
          sourceFilePath:
              'lib/dart_code/others/tween_animation_builder_code.dart',
        ),
        divider(),

        //==================================
        //       Shader Mask Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Shader Mask Widget',
          navigatePage: ShaderMaskWidget.routeName,
          sourceFilePath: 'lib/dart_code/others/shadermask_widget_code.dart',
        ),
        divider(),
        //==================================
        //       Sliver AppBar Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Sliver AppBar Widget',
          navigatePage: SliverAppBarWidget.routeName,
          sourceFilePath: 'lib/dart_code/others/sliver_app_bar_code.dart',
        ),
        divider(),

        //==================================
        //  Animated-Text-Kit Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Animated Text Kit Widget',
          navigatePage: AnimatedTextKitPage.routeName,
          sourceFilePath: 'lib/dart_code/others/animated_text_kit_code.dart',
        ),

        divider(),

        //==================================
        //       Progress Button  Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Progress Button Widget',
          navigatePage: ProgressButtonPage.routeName,
          sourceFilePath: 'lib/dart_code/others/progress_button_code.dart',
        ),
      ],
    );
  }

  _buildSectionToast() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'Toasts', iconData: MaterialCommunityIcons.toaster_oven),
      children: <Widget>[
        //==================================
        //  Simple Toast Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Simple Toast',
          navigatePage: SimpleToast.routeName,
          sourceFilePath: 'lib/dart_code/toast/1_simple_toast_code.dart',
        ),
        divider(),
        //==================================
        //  Styled Toast Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Styled Toast',
          navigatePage: StyledToastPage.routeName,
          sourceFilePath: 'lib/dart_code/toast/2_styled_toast_code.dart',
        ),
        divider(),
        //==================================
        //  Load Toast Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Load Toast',
          navigatePage: LoadToastPage.routeName,
          sourceFilePath: 'lib/dart_code/toast/3_load_toast_code.dart',
        ),
        divider(),
        //==================================
        //  Achievement Toast Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Achievement Toast',
          navigatePage: AchievementToastPage_4.routeName,
          sourceFilePath: 'lib/dart_code/toast/4_achievement_toast_code.dart',
        ),
      ],
    );
  }

  _buildSectionExpandable() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'Expandables', iconData: MaterialCommunityIcons.expand_all),
      children: <Widget>[
        //==================================
        //  Simple Expandable Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Simple Expandable',
          navigatePage: SimpleExpandablePage_.routeName,
          sourceFilePath:
              'lib/dart_code/expandable/1_simple_expandable_code.dart',
        ),
        divider(),

        //==================================
        //  Expandable Bottom Bar Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Expandable Header',
          navigatePage: ExpandableHeader.routeName,
          sourceFilePath:
              'lib/dart_code/expandable/2_expandable_header_code.dart',
        ),
        divider(),

        //==================================
        //  Extended Nav Bar Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Extended Nav Bar',
          navigatePage: ExtendedNavBar.routeName,
          sourceFilePath:
              'lib/dart_code/expandable/3_expandable_nav_bar_code.dart',
        ),
        divider(),

        //==================================
        //  Round Menu Expandable Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Round Menu Expandable Widget',
          navigatePage: RoundMenuExpandablePage_4.routeName,
          sourceFilePath:
              'lib/dart_code/expandable/4_round_menu_expandable_code.dart',
        ),
      ],
    );
  }

  _buildSectionGrid() {
    return _buildExpansionSection(
      title: _buildTitle(title: 'Grid', iconData: MaterialCommunityIcons.grid),
      children: <Widget>[
        //==================================
        //  Simple Grid Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Simple Grid',
          navigatePage: StandardImageList.routeName,
          sourceFilePath: 'lib/dart_code/grid/1_simple_grid_code.dart',
        ),
        divider(),

        //==================================
        //  Custom Grid Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Custom Grid',
          navigatePage: CustomGridPage1.routeName,
          sourceFilePath: 'lib/dart_code/grid/2_custom_grid_code.dart',
        ),
        divider(),

        //==================================
        //  Custom Grid 2 Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Custom Grid 2',
          navigatePage: CustomGridPage_.routeName,
          sourceFilePath: 'lib/dart_code/grid/3_custome_grid_code.dart',
        ),
        divider(),
        //==================================
        //  Animated Grid Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Animated Grid',
          navigatePage: AnimatedGrid.routeName,
          sourceFilePath: 'lib/dart_code/grid/4_animated_grid_code.dart',
        ),
      ],
    );
  }

  _buildSectionSettings() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'Settings', iconData: MaterialCommunityIcons.settings),
      children: <Widget>[
        //==================================
        //  Simple Grid Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Settings One',
          navigatePage: SettingsPage4.routeName,
          sourceFilePath: 'lib/dart_code/settings/4_settings_code.dart',
        ),
        divider(),
        _buildSubSectionButton(
          context: context,
          title: 'Settings Two',
          navigatePage: SettingsPage1.routeName,
          sourceFilePath: 'lib/dart_code/settings/1_settings_code.dart',
        ),
        divider(),

        //==================================
        //  Custom Grid Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Settings Three',
          navigatePage: SettingsPage2.routeName,
          sourceFilePath: 'lib/dart_code/settings/2_settings_code.dart',
        ),
        divider(),

        //==================================
        //  Custom Grid 2 Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Settings Four',
          navigatePage: SettingsPage_3.routeName,
          sourceFilePath: 'lib/dart_code/settings/3_settings_code.dart',
        ),
      ],
    );
  }

  //IntroViewsPage_1
  _buildSectionIntros() {
    return _buildExpansionSection(
      title: _buildTitle(
          title: 'Intro', iconData: MaterialCommunityIcons.infinity),
      children: <Widget>[
        //==================================
        //  IntroViews Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Slide animated Intro',
          navigatePage: IntroViewsPage.routeName,
          sourceFilePath: 'lib/dart_code/intro/1_intro_views_code.dart',
        ),
        divider(),

        //==================================
        //  Concentric Transition Intro Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Concentric Transition Intro',
          navigatePage: OnBoardingPage.routeName,
          sourceFilePath:
              'lib/dart_code/intro/2_intro_concentric_transition_code.dart',
        ),
        divider(),

        //==================================
        //  Concentric Transition Intro Widget
        //==================================
        _buildSubSectionButton(
          context: context,
          title: 'Overboard Intro',
          navigatePage: IntroOverboardPage.routeName,
          sourceFilePath: 'lib/dart_code/intro/3_intro_overboard_code.dart',
        ),
      ],
    );
  }

  _buildTitle({String title, IconData iconData}) {
    return Row(
      children: <Widget>[
        Icon(iconData),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Text(
            '$title',
            style: textStyle.normalTextTitle(),
          ),
        )
      ],
    );
  }

  _buildSubSectionButton(
      {BuildContext context,
      String title,
      String navigatePage,
      String sourceFilePath}) {
    double width = globalSize.setWidthPercentage(60, context);
    return InkWell(
      highlightColor: utils.getThem().backgroundColor,
      splashColor: utils.getThem().backgroundColor,
      onTap: () {
        Navigator.of(context).pushNamed(navigatePage, arguments: title);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
          padding: const EdgeInsets.all(5),
          width: width,
          child: Text(
            '$title',
            style: textStyle.normalText(utils.isLight()),
          ),
        ),
      ),
    );
  }

  _buildExpansionSection({
    Widget title,
    List<Widget> children,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 2.0,
        child: ExpansionTile(
          onExpansionChanged: (onExpanded) {
            print('onExpanded isssss : $onExpanded');
          },
          title: title,
          backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
          children: children,
          initiallyExpanded: false,
        ),
      ),
    );
  }

  Divider divider() => new Divider(
        height: 5.0,
        color: utils.getThem().titleAppBar,
      );
}
