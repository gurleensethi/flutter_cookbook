import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/lists/horizontal_list/horizontal_list_code.dart'
    as Code;

class HorizontalListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Horizontal List',
        link: 'https://flutter.io/cookbook/lists/horizontal-list/',
        codes: [
          CodeModel(
            title: 'Horizontal List',
            description:
                'To create a horizontal list just add scrollDirection to ListView.',
            code: Code.listCode,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 16.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
