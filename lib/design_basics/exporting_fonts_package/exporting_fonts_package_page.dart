import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/design_basics/exporting_fonts_package/exporting_fonts_packages_code.dart'
    as Code;

class ExportingFontsPackagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: "Expoting Fonts Package",
        codes: [
          CodeModel(
            title: 'Fonts inside a package',
            description:
                'You can share fonts by adding them to a different package.',
            code: Code.packageCode,
          ),
          CodeModel(
            title: 'Adding dependency to project',
            description: 'Add the above created dependency to your project.',
            code: Code.dependencyCode,
          ),
          CodeModel(
            title: 'Declaring fonts',
            description: 'Declare the fonts as usual inside your project.',
            code: Code.fontDeclaration,
          ),
          CodeModel(
            title: 'Using package fonts',
            description:
                'When using fonts from package you also need to provide the package name from which the font is being imported',
            code: Code.fontUsage,
          ),
        ],
        link: "https://flutter.io/cookbook/design/package-fonts/",
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
