import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import 'package:flutterxui/features/button/social_button_code.dart';
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
import 'package:flutterxui/features/home/home_page.dart';
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
import 'package:flutterxui/features/login/2_login_code.dart';
import 'package:flutterxui/features/login/4_login_code.dart';
import 'package:flutterxui/features/login/5_login_code.dart';
import 'package:flutterxui/features/login/6_login_code.dart';
import 'package:flutterxui/features/login/6_signup.dart';
import 'package:flutterxui/features/login/6_splashscreen.dart';
import 'package:flutterxui/features/login/7_login_code.dart';
import 'package:flutterxui/features/login/8_login_code.dart';
import 'package:flutterxui/features/login/9_login_code.dart';
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
import 'package:flutterxui/features/settings/settings.dart';
import 'package:flutterxui/features/signup/1_signup_code.dart';
import 'package:flutterxui/features/signup/2_signup_code.dart';
import 'package:flutterxui/features/signup/4_signup_code.dart';
import 'package:flutterxui/features/signup/5_signup_code.dart';
import 'package:flutterxui/features/signup/9_signup_code.dart';
import 'package:flutterxui/features/sliders/1_pager_slider_code.dart';
import 'package:flutterxui/features/sliders/2_pager_slider_code.dart';
import 'package:flutterxui/features/sliders/3_pager_slider_code.dart';
import 'package:flutterxui/features/splash_screen.dart';
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
import 'package:flutterxui/features/welcome_page/6_welcome_code.dart';
import 'package:flutterxui/features/welcome_page/9_welcome_page_code.dart';
import 'package:flutterxui/providers/app_provider.dart';
import 'package:provider/provider.dart';


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Consumer<AppProvider>(
      builder: (BuildContext context, AppProvider appProvider, Widget child) {
        return MaterialApp(
          key: appProvider.key,
          debugShowCheckedModeBanner: false,
          navigatorKey: appProvider.navigatorKey,
          title: Constants.appName,
          theme: appProvider.theme,
          initialRoute: SplashScreen.routeName,
          routes: {
            About1.routeName: (context) => About1(),
            About2.routeName: (context) => About2(),
            About3.routeName: (context) => About3(),
            CardArticle.routeName: (context) => CardArticle(),
            FoodArticle.routeName: (context) => FoodArticle(),
            HeaderArticle.routeName: (context) => HeaderArticle(),
            MediumArticle.routeName: (context) => MediumArticle(),
            SimpleArticle.routeName: (context) => SimpleArticle(),
            AnimatedBottomBar.routeName: (context) => AnimatedBottomBar(),
            MainBotttomNaviWidget.routeName: (context) => MainBotttomNaviWidget(),
            BottomNavyBarPage.routeName: (context) => BottomNavyBarPage(),
            BottomNavBar.routeName: (context) => BottomNavBar(),
            FancyBottomNavigationPage.routeName: (context) => FancyBottomNavigationPage(),
            FlipBottomNavigationBarPage.routeName: (context) => FlipBottomNavigationBarPage(),
            TitledNavigationBottomPage.routeName: (context) => TitledNavigationBottomPage(),
            FlatButtons.routeName: (context) => FlatButtons(),
            FloatingActionButtons.routeName: (context) => FloatingActionButtons(),
            LikeButtonPage.routeName: (context) => LikeButtonPage(),
            ButtonRaised.routeName: (context) => ButtonRaised(),
            AnimatedButton.routeName: (context) => AnimatedButton(),
            AwesomeDialogScreen.routeName: (context) => AwesomeDialogScreen(),
            SampleDialog.routeName: (context) => SampleDialog(),
            CollapsingDrawer.routeName: (context) => CollapsingDrawer(),
            AnimatedDrawer.routeName: (context) => AnimatedDrawer(),
            DarkDrawerPage.routeName: (context) => DarkDrawerPage(),
            HiddenMenu.routeName: (context) => HiddenMenu(),
            LightDrawerPage.routeName: (context) => LightDrawerPage(),
            ResideMenuPage.routeName: (context) => ResideMenuPage(),
            SimpleDrawer.routeName: (context) => SimpleDrawer(),
            DropdownSearchable.routeName: (context) => DropdownSearchable(),
            DropdownGeneral.routeName: (context) => DropdownGeneral(),
            SimpleExpandablePage_.routeName: (context) => SimpleExpandablePage_(),
            ExpandableHeader.routeName: (context) => ExpandableHeader(),
            ExtendedNavBar.routeName: (context) => ExtendedNavBar(),
            RoundMenuExpandablePage_4.routeName: (context) => RoundMenuExpandablePage_4(),
            StandardImageList.routeName: (context) => StandardImageList(),
            CustomGridPage1.routeName: (context) => CustomGridPage1(),
            CustomGridPage_.routeName: (context) => CustomGridPage_(),
            AnimatedGrid.routeName: (context) => AnimatedGrid(),
            ImageCustom.routeName: (context) => ImageCustom(),
            Images.routeName: (context) => Images(),
            ImagePopup.routeName: (context) => ImagePopup(),
            IntroViewsPage.routeName: (context) => IntroViewsPage(),
            OnBoardingPage.routeName: (context) => OnBoardingPage(),
            IntroOverboardPage.routeName: (context) => IntroOverboardPage(),
            BouncyList.routeName: (context) => BouncyList(),
            CustomChangingList.routeName: (context) => CustomChangingList(),
            ExpandableList.routeName: (context) => ExpandableList(),
            ReorderableListDemo.routeName: (context) => ReorderableListDemo(),
            SelectionList.routeName: (context) => SelectionList(),
            SimpleList.routeName: (context) => SimpleList(),
            SlidableList.routeName: (context) => SlidableList(),
            SwipeableList.routeName: (context) => SwipeableList(),
            ListWheelScroll.routeName: (context) => ListWheelScroll(),
            LoginPage1.routeName: (context) => LoginPage1(),
            LoginPage2.routeName: (context) => LoginPage2(),
            DarkLoginPage.routeName: (context) => DarkLoginPage(),
            LoginPage5.routeName: (context) => LoginPage5(),
            SignInScreen.routeName: (context) => SignInScreen(),

            SignUpPage_6.routeName: (context) => SignUpPage_6(),
            SplashScreen_6.routeName: (context) => SplashScreen_6(),
            LoginPage7.routeName: (context) => LoginPage7(),
            LoginPag8.routeName: (context) => LoginPag8(),
            LoginForm.routeName: (context) => LoginForm(),
            LoginPage10.routeName: (context) => LoginPage10(),
            LoginPage11.routeName: (context) => LoginPage11(),
            NoConnection.routeName: (context) => NoConnection(),
            NoConnectionImage.routeName: (context) => NoConnectionImage(),
            NoItemSearch.routeName: (context) => NoItemSearch(),
            AnimatedCrossFadeWidget.routeName: (context) => AnimatedCrossFadeWidget(),
            AnimatedTextKitPage.routeName: (context) => AnimatedTextKitPage(),
            BackdropFilterWidget.routeName: (context) => BackdropFilterWidget(),
            ColorFilteredWidget.routeName: (context) => ColorFilteredWidget(),
            DraggableScrollableSheetWidget.routeName: (context) => DraggableScrollableSheetWidget(),
            ProgressButtonPage.routeName: (context) => ProgressButtonPage(),
            ShaderMaskWidget.routeName: (context) => ShaderMaskWidget(),
            SliverAppBarWidget.routeName: (context) => SliverAppBarWidget(),
            ToggleButtonsWidget.routeName: (context) => ToggleButtonsWidget(),
            TweenAnimationBuilderWidget.routeName: (context) => TweenAnimationBuilderWidget(),
            DateDark.routeName: (context) => DateDark(),
            DateLight.routeName: (context) => DateLight(),
            TimeDark.routeName: (context) => TimeDark(),
            TimeLight.routeName: (context) => TimeLight(),
            Profile1.routeName: (context) => Profile1(),
            Profile2.routeName: (context) => Profile2(),
            Profile3.routeName: (context) => Profile3(),
            Profile4.routeName: (context) => Profile4(),
            Profile5.routeName: (context) => Profile5(),
            Profile6.routeName: (context) => Profile6(),
            Profile7.routeName: (context) => Profile7(),
            CircularPercent.routeName: (context) => CircularPercent(),
            CustomProgress.routeName: (context) => CustomProgress(),
            LinearPercent.routeName: (context) => LinearPercent(),
            Progress.routeName: (context) => Progress(),
            SimpleSearch.routeName: (context) => SimpleSearch(),
            ToolbarSearch.routeName: (context) => ToolbarSearch(),
            SettingsPage.routeName: (context) => SettingsPage(),
            SettingsPage1.routeName: (context) => SettingsPage1(),
            SettingsPage2.routeName: (context) => SettingsPage2(),
            SettingsPage_3.routeName: (context) => SettingsPage_3(),
            SettingsPage4.routeName: (context) => SettingsPage4(),
            NewUser.routeName: (context) => NewUser(),
            SignUpPage.routeName: (context) => SignUpPage(),
            SignUp.routeName: (context) => SignUp(),
            DarkRegister.routeName: (context) => DarkRegister(),
            SignUpPage_5.routeName: (context) => SignUpPage_5(),
            SignUpForm.routeName: (context) => SignUpForm(),
            SlidersPage_1.routeName: (context) => SlidersPage_1(),
            PageViewWithDotIndicator_.routeName: (context) => PageViewWithDotIndicator_(),
            SlidersPage.routeName: (context) => SlidersPage(),
            SimpleTab.routeName: (context) => SimpleTab(),
            SimpleTabWithIcon.routeName: (context) => SimpleTabWithIcon(),
            IconTab.routeName: (context) => IconTab(),
            ScrollableTab.routeName: (context) => ScrollableTab(),
            TextProperty.routeName: (context) => TextProperty(),
            TextFieldBorder.routeName: (context) => TextFieldBorder(),
            TextFieldProperty.routeName: (context) => TextFieldProperty(),
            BasicTextField.routeName: (context) => BasicTextField(),
            SimpleToast.routeName: (context) => SimpleToast(),
            StyledToastPage.routeName: (context) => StyledToastPage(),
            LoadToastPage.routeName: (context) => LoadToastPage(),
            AchievementToastPage_4.routeName: (context) => AchievementToastPage_4(),
            WelcomePage.routeName: (context) => WelcomePage(),
            Welcome6.routeName: (context) => Welcome6(),
            AuthThreePage.routeName: (context) => AuthThreePage(),
            AboutDialog4.routeName: (context) => AboutDialog4(),
            AboutAppPage.routeName: (context) => AboutAppPage(),
            SplashScreen.routeName: (context) => SplashScreen(),
            HomePage.routeName: (context) => HomePage(),

          },
        );
      },
    );
  }
}
