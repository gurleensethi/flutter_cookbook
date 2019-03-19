import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/code_page/code_page.dart';
import 'package:flutter_cookbook/lists/floating_action_app_bar/floating_action_app_bar_code.dart'
    as Code;
import 'package:url_launcher/url_launcher.dart';

class FloatingActionAppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Floating App Bar'),
            floating: true,
            flexibleSpace: Placeholder(),
            expandedHeight: 200,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.code,
                ),
                onPressed: () {
                  _startCodePage(
                    context,
                    [
                      CodeModel(
                        title: 'Add a CustomScrollView',
                        code: Code.customScrollView,
                      ),
                      CodeModel(
                        title: 'Add SliverAppBar',
                        description:
                            'Sliver app bar gives you various options customize the behaviour of app bar while scrolling.',
                        code: Code.sliverAppBar,
                      ),
                      CodeModel(
                        title: 'Add a SliverList',
                        description:
                            'Add a large list to see the app bar scrolling behaviour into effect',
                        code: Code.sliverList,
                      ),
                    ],
                  );
                },
                tooltip: "Code",
              ),
              IconButton(
                icon: Icon(
                  Icons.link,
                ),
                onPressed: () {
                  _launchUrl(
                      'https://flutter.dev/docs/cookbook/lists/floating-app-bar');
                },
                tooltip: "Link",
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text("Item $index"),
                );
              },
              childCount: 1000,
            ),
          ),
        ],
      ),
    );
  }
}

_launchUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  }
}

void _startCodePage(BuildContext context, List<CodeModel> codes) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) {
        return CodePage(
          codes: codes,
        );
      },
    ),
  );
}
