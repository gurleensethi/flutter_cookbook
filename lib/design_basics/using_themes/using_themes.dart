import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/code_page/code_page.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/design_basics/using_themes/using_themes_code.dart'
    as Code;
import 'package:url_launcher/url_launcher.dart';

class UsingThemesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => UsingThemesPageState();
}

class UsingThemesPageState extends State<UsingThemesPage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      child: Scaffold(
        appBar: primaryAppBar(
          context: context,
          title: "Using Themes",
          link: "https://flutter.io/cookbook/design/themes/",
          codes: [
            CodeModel(
                title: "App Theme",
                code: Code.code["main_theme"],
                description: "The main theme of your application."),
            CodeModel(
                title: "Extending Theme",
                code: Code.code["theme"],
                description: "Using theme inside your widget tree."),
          ],
        ),
        body: Center(
          child: Container(
            color: Theme.of(context).accentColor,
            child: Text(
              'Text with a background color',
              style: Theme.of(context).textTheme.title,
            ),
          ),
        ),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.yellow),
          child: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
