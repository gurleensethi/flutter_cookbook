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
        title: Row(
          children: <Widget>[
            Icon(Icons.code),
            SizedBox(width: 16.0),
            Text('Flutter Cookbook'),
          ],
        ),
        centerTitle: true,
        elevation: 1.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.of(context).pushNamed("/infoPage");
            },
          ),
        ],
      ),
      body: MainList(),
    );
  }
}
