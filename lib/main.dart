import 'package:flutter/material.dart';
import 'package:flutter_cookbook/design_basics/custom_fonts/custom_fonts_page.dart';
import 'package:flutter_cookbook/design_basics/displaying_snackbars/displaying_snackbars.dart';
import 'package:flutter_cookbook/design_basics/using_themes/using_themes.dart';
import 'package:flutter_cookbook/design_basics/working_with_tabs/working_with_tabs_page.dart';
import 'package:flutter_cookbook/home.dart';

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
        }
      },
    );
  }
}
