import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_html_view/flutter_html_view.dart';

class CodeListItem extends StatelessWidget {
  final CodeModel code;

  const CodeListItem({
    Key key,
    this.code,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            code.title,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          code.description != null
              ? Text(
                  code.description,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey[600],
                  ),
                )
              : Container(),
          code.description != null
              ? SizedBox(
                  height: 8.0,
                )
              : Container(),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.grey[300],
            ),
            child: Text(
              code.code,
            ),
          ),
        ],
      ),
    );
  }
}
