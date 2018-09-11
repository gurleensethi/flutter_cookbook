import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/images/images_from_internet_code.dart' as Code;

class ImagesFromInternetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Images from internet',
        link: 'https://flutter.io/cookbook/images/network-image/',
        codes: [
          CodeModel(
            title: 'Image from network',
            code: Code.image,
          ),
          CodeModel(
            title: 'GIF from network',
            code: Code.gif,
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
                margin: EdgeInsets.only(top: 16.0),
              ),
              Container(
                child: Text('Image'),
                margin: EdgeInsets.all(16.0),
              ),
              Image.network(
                'https://raw.githubusercontent.com/flutter/website/master/src/_includes/code/layout/lakes/images/lake.jpg',
              ),
              Container(
                child: Text('GIF'),
                margin: EdgeInsets.all(16.0),
              ),
              Image.network(
                'https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
