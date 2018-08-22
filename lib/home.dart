import 'package:flutter/material.dart';
import 'package:flutter_cookbook/main_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Cookbook'),
        centerTitle: true,
        elevation: 2.0,
      ),
      body: MainList(),
    );
  }
}
