import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/common/primary_app_bar.dart';
import 'package:flutter_cookbook/design_basics/ui_orientation/ui_orientation_code.dart'
    as Code;

class UIOrientationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primaryAppBar(
          context: context,
          title: "UI Orientation",
          link: "https://flutter.io/cookbook/design/orientation/",
          codes: [
            CodeModel(
                title: 'Using OrientationBuilder',
                description:
                    'OrientationBuilder provides a parameter which can be use to detect the orientation',
                code: Code.code),
          ]),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return ListView(
            primary: true,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 32.0),
                child: Center(
                  child: Text('Rotate the phone.'),
                ),
              ),
              GridView.count(
                primary: false,
                shrinkWrap: true,
                crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
                children: List.generate(
                  10,
                  (index) {
                    return Container(
                      child: Center(
                        child: Text(
                          '$index',
                          style: TextStyle(
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
