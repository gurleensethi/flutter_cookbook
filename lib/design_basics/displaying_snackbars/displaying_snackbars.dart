import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/PrimaryAppBar.dart';
import 'package:flutter_cookbook/design_basics/displaying_snackbars/displaying_snackbars_code.dart'
    as Code;

class DisplayingSnackbarsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        title: "Displaying Snackbars",
        context: context,
        link: "https://flutter.io/cookbook/design/snackbars/",
        codes: [
          CodeModel(
            title: "Snackbars",
            description: "Showing a simple snackbar.",
            code: Code.snackbar,
          ),
        ]
      ),
      body: DisplayingSnackbars(),
    );
  }
}

class DisplayingSnackbars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          child: Text('Show SnackBar'),
          onPressed: () {
            Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Yay! A SnackBar!'),
                    action: SnackBarAction(
                      label: "Undo",
                      onPressed: () {},
                    ),
                  ),
                );
          },
        ),
      ),
    );
  }
}
