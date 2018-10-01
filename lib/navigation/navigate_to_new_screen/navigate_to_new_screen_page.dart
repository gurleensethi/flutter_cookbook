import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/navigation/navigate_to_new_screen/navigate_to_new_screen_code.dart'
    as Code;

class NavigateToNewScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Navigate To New Screen',
        link: 'https://flutter.io/cookbook/navigation/navigation-basics/',
        codes: [
          CodeModel(
            title: 'Set up two screens',
            description:
                'Set up two screens. One named first screen and the other named second. '
                'Second screen is the one that will be launched from the first.',
            code: Code.screenCode,
          ),
          CodeModel(
            title: 'Use Navigator.push',
            description:
                'To move to a different screen use Navigator.push with appropriate parameters.',
            code: Code.navigatorPushCode,
          ),
          CodeModel(
            title: 'Use Navigator.pop',
            description: 'To close a screen use Navigator.pop',
            code: Code.navigatorPopCode,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('First Screen'),
            SizedBox(height: 16.0),
            RaisedButton(
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
          ],
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Second Screen'),
            SizedBox(height: 16.0),
            RaisedButton(
              child: Text('Go Back!'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
