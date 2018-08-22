import 'package:flutter/material.dart';
import 'package:flutter_cookbook/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Cookbook',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {

      },
    );
  }
}