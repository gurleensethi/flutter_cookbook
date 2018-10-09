import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/navigation/animating_widget_across_screens/animating_widget_across_screen_code.dart'
    as Code;

class AnimatingWidgetAcrossScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
        context: context,
        title: 'Animating across screens',
        link: 'https://flutter.io/cookbook/navigation/hero-animations/',
        codes: [
          CodeModel(
            title: 'Main Screen',
            description:
                'Set up a main page with an image. On clicking the image open the detail page.',
            code: Code.mainScreen,
          ),
          CodeModel(
            title: 'Detail Screen',
            description:
                'Set up the detail screen with the same image but in center. On clicking the image close the page.',
            code: Code.detailHero,
          ),
          CodeModel(
            title: 'Add Hero in Main Screen',
            description:
                'In the main screen, surround the image with Hero widget and give it a tag.',
            code: Code.mainHero,
          ),
          CodeModel(
            title: 'Add Hero in Detail Screen',
            description:
                'In the detail screen, surround the image with Hero widget and give it the same tag as before tag.',
            code: Code.detailHero,
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailScreen();
              },
            ),
          );
        },
        child: Column(
          children: <Widget>[
            SizedBox(height: 16.0),
            Text('Tap on the image.'),
            SizedBox(height: 16.0),
            Hero(
              tag: 'imageHero',
              child: Image.network(
                  'https://raw.githubusercontent.com/flutter/website/master/src/_includes/code/layout/lakes/images/lake.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Tap on the image to close.'),
              SizedBox(height: 32.0),
              Hero(
                tag: 'imageHero',
                child: Image.network(
                    'https://raw.githubusercontent.com/flutter/website/master/src/_includes/code/layout/lakes/images/lake.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
