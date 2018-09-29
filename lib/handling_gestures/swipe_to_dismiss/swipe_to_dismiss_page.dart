import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/handling_gestures/swipe_to_dismiss/swipe_to_dismiss_code.dart'
    as Code;

class SwipeToDismiss extends StatefulWidget {
  @override
  SwipeToDismissState createState() {
    return new SwipeToDismissState();
  }
}

class SwipeToDismissState extends State<SwipeToDismiss> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: "Swipe To Dismiss",
        link: 'https://flutter.io/cookbook/gestures/dismissible/',
        codes: [
          CodeModel(
            title: 'Demo Data',
            description: 'Set up a list of demo items',
            code: Code.demoList,
          ),
          CodeModel(
            title: 'Set up the ListView',
            description: 'Set up a ListView with the demo data.',
            code: Code.listCode,
          ),
          CodeModel(
            title: 'Use Dismissiable',
            description:
                'Use the Dismissiable widget to add the dismiss feature. '
                'Return Dismissiable widget in the itemBuilder of ListView.',
            code: Code.dismissibleCode,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return Dismissible(
            background: Container(color: Colors.red),
            child: ListTile(
              title: Text(item),
            ),
            key: Key(item),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });

              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("$item dismissed"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
