import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/lists/basic_list/basic_list_code.dart' as Code;

class BasicListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
          context: context,
          title: 'Basic List',
          link: 'https://flutter.io/cookbook/lists/basic-list/',
          codes: [
            CodeModel(
              title: 'Create a ListView',
              description:
                  'Add content to ListView to create a list. You can add any type of Widget as children.',
              code: Code.listCode,
            ),
          ]),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
      ),
    );
  }
}
