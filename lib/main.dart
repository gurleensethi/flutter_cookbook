import 'package:flutter/material.dart';
import 'package:flutter_cookbook/animation/fade_a_widget/fade_a_widget_page.dart';
import 'package:flutter_cookbook/design_basics/adding_drawer/adding_drawer_page.dart';
import 'package:flutter_cookbook/design_basics/custom_fonts/custom_fonts_page.dart';
import 'package:flutter_cookbook/design_basics/displaying_snackbars/displaying_snackbars.dart';
import 'package:flutter_cookbook/design_basics/exporting_fonts_package/exporting_fonts_package_page.dart';
import 'package:flutter_cookbook/design_basics/ui_orientation/ui_orientation_page.dart';
import 'package:flutter_cookbook/design_basics/using_themes/using_themes.dart';
import 'package:flutter_cookbook/design_basics/working_with_tabs/working_with_tabs_page.dart';
import 'package:flutter_cookbook/handling_gestures/handling_taps/handling_taps_page.dart';
import 'package:flutter_cookbook/handling_gestures/material_touch_ripples/material_touch_ripples_page.dart';
import 'package:flutter_cookbook/handling_gestures/swipe_to_dismiss/swipe_to_dismiss_page.dart';
import 'package:flutter_cookbook/home.dart';
import 'package:flutter_cookbook/images/cached_images/cached_images_page.dart';
import 'package:flutter_cookbook/images/fade_in_images/fade_in_images_page.dart';
import 'package:flutter_cookbook/images/images_from_internet/image_from_internet_page.dart';
import 'package:flutter_cookbook/lists/basic_list/basic_list_page.dart';
import 'package:flutter_cookbook/lists/grid_list/grid_list_page.dart';
import 'package:flutter_cookbook/lists/horizontal_list/horizontal_list_page.dart';
import 'package:flutter_cookbook/lists/list_different_items/list_different_items_page.dart';
import 'package:flutter_cookbook/lists/long_lists/long_lists_page.dart';
import 'package:flutter_cookbook/navigation/animating_widget_across_screens/animating_widget_across_screen_page.dart';
import 'package:flutter_cookbook/navigation/navigate_to_new_screen/navigate_to_new_screen_page.dart';
import 'package:flutter_cookbook/navigation/navigate_with_named_routes/navigate_with_named_routes_page.dart';
import 'package:flutter_cookbook/navigation/return_data_from_screen/return_data_from_screen_page.dart';
import 'package:flutter_cookbook/navigation/send_data_to_new_screen/send_data_to_new_screen_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Cookbook',
      theme: new ThemeData(
        primaryColor: Colors.white,
        primaryTextTheme: TextTheme(
          body1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/usingThemes": (context) {
          return UsingThemesPage();
        },
        "/displayingSnackbars": (context) {
          return DisplayingSnackbarsPage();
        },
        "/workingWithTabsPage": (context) {
          return WorkingWithTabsPage();
        },
        "/customFonts": (context) {
          return CustomFontsPage();
        },
        "/exportingFontsPackages": (context) {
          return ExportingFontsPackagePage();
        },
        "/addingDrawer": (context) {
          return AddingDrawerPage();
        },
        "/uiOrientation": (context) {
          return UIOrientationPage();
        },
        "/imagesFromInternet": (context) {
          return ImagesFromInternetPage();
        },
        "/fadeInImages": (context) {
          return FadeInImagesPage();
        },
        "/cachedImages": (context) {
          return CachedImagesPage();
        },
        "/basicList": (context) {
          return BasicListPage();
        },
        "/horizontalList": (context) {
          return HorizontalListPage();
        },
        "/longLists": (context) {
          return LongListsPage();
        },
        "/listDifferentItems": (context) {
          return ListDifferentItemsPage();
        },
        "/gridList": (context) {
          return GridListPage();
        },
        "/handlingTaps": (context) {
          return HandlingTapsPage();
        },
        "/materialTouchRipples": (context) {
          return MaterialTouchRipplesPage();
        },
        "/swipeToDismiss": (context) {
          return SwipeToDismiss();
        },
        "/navigateToNewScreen": (context) {
          return NavigateToNewScreenPage();
        },
        "/sendDataToNewScreen": (context) {
          return SendDataToNewScreenPage();
        },
        "/returnDataFromScreen": (context) {
          return ReturnDataFromScreenPage();
        },
        "/navigateWithNamedRoutes": (context) {
          return NavigateWithNamedRoutesPage();
        },
        "/animatingAcrossScreens": (context) {
          return AnimatingWidgetAcrossScreenPage();
        },
        "/fadeAWidget": (context) {
          return FadeAWidgetPage();
        }
      },
    );
  }
}
