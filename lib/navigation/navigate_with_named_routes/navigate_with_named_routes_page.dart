import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/navigation/navigate_with_named_routes/navigate_with_named_routes_code.dart'
    as Code;

class NavigateWithNamedRoutesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        title: 'Navigate with named routes',
        link: 'https://flutter.io/cookbook/networking/named-routes/',
        context: context,
        codes: [
          CodeModel(
            title: 'Set up First Screen',
            description: 'Set up first screen with a button',
            code: Code.firstScreen,
          ),
          CodeModel(
            title: 'Set up Second Screen',
            description: 'Set up second screen with a button',
            code: Code.secondScreen,
          ),
          CodeModel(
            title: 'Define named routes',
            description:
                'Define named routes in MaterialApp. For each route return the page that you want to be opened.',
            code: Code.defineRoutes,
          ),
          CodeModel(
            title: 'Navigate with named route',
            description: 'Use Navigator.pushNamed() to open the second page.',
            code: Code.navigateToSecond,
          ),
          CodeModel(
            title: 'Return to first screen',
            description: 'Use Navigator.pop() to return to first screen',
            code: Code.returnFromScreen,
          ),
        ],
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch Screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SecondScreen();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go back!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
