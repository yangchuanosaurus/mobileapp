import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//void main() => runApp( new MyApp() );
void main() {
  runApp(
    new MaterialApp(
      title: 'My App',
      home: new MyScaffold()
    )
  );
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(

      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              'Example Title', 
              style: Theme.of(context).primaryTextTheme.title,
            )
          ),

          new Expanded(
            child: new Center(
              child: new Text('Hello, WOrld!'),
            ),
          ),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return new Container(

      //height: 56.0,
      //padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null
          ),

          new Expanded(
            child: title
          ),

          new IconButton(
            icon: new Icon(Icons.search), 
            tooltip: 'Search',
            onPressed: null
          ),
        ]
      ),

    );
  }
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(

      title: 'Welcome to Flutter',

      home: new Scaffold(

        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),

        body: new Center(
          child: new RandomWords(),
        ),

      ),

    );

  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}