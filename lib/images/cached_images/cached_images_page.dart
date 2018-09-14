import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cookbook/images/cached_images/cached_images_code.dart'
    as Code;

class CachedImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Working with cached images',
        link: 'https://flutter.io/cookbook/images/cached-images/',
        codes: [
          CodeModel(
            title: 'Add package',
            description:
                'To get caching capability you first need to add the following package in pubspec.',
            code: Code.cachedNetworkImagePackage,
          ),
          CodeModel(
            title: 'Cached Image',
            code: Code.cachedNetworkImage,
          ),
          CodeModel(
            title: 'Cached Image with Placeholder',
            code: Code.cachedNetworkImagePlaceholder,
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
              Container(
                child: Text('Cached Network Image'),
                margin: EdgeInsets.all(16.0),
              ),
              CachedNetworkImage(
                imageUrl:
                    'https://github.com/flutter/website/blob/master/src/_includes/code/layout/lakes/images/lake.jpg?raw=true',
              ),
              Container(
                child: Text('Cached Network Image (with Placeholder)'),
                margin: EdgeInsets.all(16.0),
              ),
              CachedNetworkImage(
                placeholder: Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                imageUrl:
                    'https://github.com/flutter/website/blob/master/src/_includes/code/layout/lakes/images/lake.jpg?raw=true',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
