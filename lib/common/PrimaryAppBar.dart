import 'package:flutter/material.dart';

AppBar primaryAppBar({
  String title,
  List<Widget> actions,
}) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    actions: actions,
  );
}
