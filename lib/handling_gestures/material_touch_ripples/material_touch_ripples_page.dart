import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/handling_gestures/material_touch_ripples/material_touch_ripples_code.dart'
    as Code;

class MaterialTouchRipplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Material Touch Ripples',
        link: 'https://flutter.io/cookbook/gestures/ripples/',
        codes: [
          CodeModel(
            title: 'Material Touch Ripples',
            description: 'Use InkWell to add touch ripples around any Widget',
            code: Code.ripple,
          ),
        ],
      ),
      body: Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('Tap'),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Text('Flat Button'),
      ),
    );
  }
}
