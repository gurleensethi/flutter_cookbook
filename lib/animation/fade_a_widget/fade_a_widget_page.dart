import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/animation/fade_a_widget/fade_a_widget_code.dart'
    as Code;

class FadeAWidgetPage extends StatefulWidget {
  @override
  FadeAWidgetPageState createState() {
    return new FadeAWidgetPageState();
  }
}

class FadeAWidgetPageState extends State<FadeAWidgetPage> {
  bool _visible = true;

  @override
  void initState() {
    super.initState();
    print('Change' + DateTime.now().toIso8601String());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
          context: context,
          title: 'Fade a widget',
          link: 'https://flutter.io/cookbook/animation/opacity-animation/',
          codes: [
            CodeModel(
              title: 'Visible Variable',
              description:
                  'In the Stateful widget, define a variable that will '
                  'decide if the widget is visible or not.',
              code: Code.visibleVariable,
            ),
            CodeModel(
              title: 'Toggle Button',
              description:
                  'Add a FloatingActionButton to toggle the visibility.',
              code: Code.visibleButton,
            ),
            CodeModel(
              title: 'AnimatedOpacity Widget',
              description: 'Use the AnimatedOpacity widget to fade in and out '
                  'the desired widget.',
              code: Code.animatedOpacity,
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Make sure we call setState! This will tell Flutter to rebuild the
          // UI with our changes!
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
