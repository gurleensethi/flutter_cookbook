import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/navigation/return_data_from_screen/return_data_from_screen_code.dart' as Code;

class ReturnDataFromScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Return data from screen',
        link: 'https://flutter.io/cookbook/navigation/returning-data/',
        codes: [
          CodeModel(
            title: 'Set up Home Screen',
            description:
                'Set up a home screen that contains a button to launch the 2nd screen.',
            code: Code.homeScreen,
          ),
          CodeModel(
            title: 'Selection Button',
            description:
            'Set up the button which will launch 2nd screen.',
            code: Code.selectionButton,
          ),
          CodeModel(
            title: 'Selection Screen',
            description:
            'This is the second page from which data will be returned to the first screen.',
            code: Code.selectionScreen,
          ),
          CodeModel(
            title: 'Response Buttons',
            description: 'Send response back to first screen using Navigator.pop().',
            code: Code.responseButtons,
          ),
          CodeModel(
            title: 'Show selection',
            description: 'The the selection from 2nd screen in the first screen.',
            code: Code.snackBar,
          ),
        ],
      ),
      body: Center(child: SelectionButton()),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Pick an option, any option!'),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return SelectionScreen();
        },
      ),
    );

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'Yep!');
                },
                child: Text('Yep!'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'Nope.!');
                },
                child: Text('Nope.!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
