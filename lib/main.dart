import 'package:flutter/material.dart';
import './HomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final String _title = 'Random Words';
    return new MaterialApp(
      title: _title,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: _title),
    );
  }
}