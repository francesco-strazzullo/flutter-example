import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text = (new WordPair.random()).asPascalCase;

  void _randomWord() {
    setState(() {
      _text = (new WordPair.random()).asPascalCase;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Click to generate a new random pair',
            ),
            new Text(
              _text,
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _randomWord,
        tooltip: 'Roll',
        child: new Icon(Icons.casino),
      ),
    );
  }
}
