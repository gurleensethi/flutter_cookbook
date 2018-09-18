import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/lists/long_lists/long_lists_code.dart' as Code;

class LongListsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(10000, (i) => "Item $i");

    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Long Lists',
        link: 'https://flutter.io/cookbook/lists/long-lists/',
        codes: [
          CodeModel(
            title: 'Sample Data',
            description: 'Create a very long list to be displayed.',
            code: Code.items,
          ),
          CodeModel(
            title: 'Using Builder',
            description: 'Use ListView.builder to generate long list. Make sure to provide the itemCount.',
            code: Code.list,
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
