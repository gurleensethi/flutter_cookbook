import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/lists/list_different_items/list_different_items_code.dart'
    as Code;

class ListDifferentItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List<ListItem>.generate(
      1200,
      (i) {
        return i % 6 == 0
            ? HeadingItem(heading: "Heading $i")
            : MessageItem(
                body: 'Message body $i',
                sender: 'Sender $i',
              );
      },
    );

    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Different Items List',
        link: 'https://flutter.io/cookbook/lists/mixed-list/',
        codes: [
          CodeModel(
            title: 'Set up',
            description: 'Create classes that represent different items.',
            code: Code.classSetup,
          ),
          CodeModel(
            title: 'Create a data list',
            description:
                'Create a list of demo data that contains heading items and message items.',
            code: Code.dataSetup,
          ),
          CodeModel(
            title: 'Build the list',
            description: 'Set up the list using ListView.builder.',
            code: Code.listCode,
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = items[index];

          if (item is HeadingItem) {
            return ListTile(
              title: Text(
                item.heading,
                style: Theme.of(context).textTheme.headline,
              ),
            );
          } else if (item is MessageItem) {
            return ListTile(
              title: Text(item.sender),
              subtitle: Text(item.body),
            );
          }
        },
        itemCount: items.length,
      ),
    );
  }
}

abstract class ListItem {}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem({this.heading});
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem({this.sender, this.body});
}
