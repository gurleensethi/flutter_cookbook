import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/images/fade_in_images/fade_in_images_code.dart'
    as Code;

class FadeInImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Fade in images',
        link: 'https://flutter.io/cookbook/images/fading-in-images/',
        codes: [
          CodeModel(
            code: Code.memoryNetwork,
            title: 'Image with placeholder from memory',
            description:
                'Loading images with placeholder from memory with fade animation.',
          ),
          CodeModel(
            code: Code.assetNetwork,
            title: 'Image with placeholder from asset',
            description:
                'Loading images with placeholder from asset with fade animation.',
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                child: Text(
                  '(Please make sure you have a valid internet connection)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
                margin: EdgeInsets.only(
                  top: 16.0,
                  bottom: 16.0,
                ),
              ),
              FadeInImage.assetNetwork(
                placeholder: 'images/loading.gif',
                image:
                    'https://github.com/flutter/website/blob/master/src/_includes/code/layout/lakes/images/lake.jpg?raw=true',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
