import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_list_item.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';

class CodePage extends StatelessWidget {
  final String title;
  final List<CodeModel> codes;

  const CodePage({
    Key key,
    this.codes,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title ?? "Code"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CodeListItem(
            code: codes[index],
          );
        },
        itemCount: codes != null ? codes.length : 0,
      ),
    );
  }
}
