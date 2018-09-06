import 'package:flutter/material.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/design_basics/custom_fonts/custom_fonts_code.dart'
    as Code;

class CustomFontsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: "Using Custom Fonts",
        codes: [
          CodeModel(
            title: "Set as default font",
            description: "Change the font of complete application.",
            code: Code.defaultFont,
          ),
          CodeModel(
            title: "Use font in a single widget",
            description: "Using font for a particular text view.",
            code: Code.textStyleFont,
          ),
        ],
        link: "https://flutter.io/cookbook/design/fonts/",
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Text with no Font!',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Text with Lobster Font!',
              style: TextStyle(
                fontFamily: 'Lobster',
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
