import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/handling_gestures/handling_taps/handling_taps_code.dart'
    as Code;

class HandlingTapsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
          title: 'Handling Taps',
          context: context,
          link: 'https://flutter.io/cookbook/gestures/handling-taps/',
          codes: [
            CodeModel(
              title: 'Detecting Taps',
              description: 'Use GestureDetector to detect taps on any widget.',
              code: Code.code,
            ),
          ]),
      body: Container(
        child: Center(
          child: MyButton(),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(content: Text("Tap"));

        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('My Button'),
      ),
    );
  }
}
