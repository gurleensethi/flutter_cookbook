import 'package:flutter/material.dart';
import 'package:flutter_cookbook/code_page/code_model.dart';
import 'package:flutter_cookbook/code_page/code_page.dart';
import 'package:url_launcher/url_launcher.dart';

AppBar primaryAppBar({
  String title,
  BuildContext context,
  List<CodeModel> codes,
  String link,
  Widget bottom,
  Widget leading,
}) {
  return AppBar(
    elevation: 1.0,
    title: Text(
      title,
      style: TextStyle(
        fontSize: 16.0,
      ),
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.code,
        ),
        onPressed: () {
          _startCodePage(context, codes);
        },
        tooltip: "Code",
      ),
      IconButton(
        icon: Icon(
          Icons.link,
        ),
        onPressed: () {
          _launchUrl(link);
        },
        tooltip: "Link",
      ),
    ],
    bottom: bottom,
    leading: leading,
  );
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
