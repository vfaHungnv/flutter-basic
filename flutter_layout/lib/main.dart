import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text("Programming tutorials channel",  
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                      )),
                ),
                new Text("This channel contains tutorial videos in Flutter, React Native, React, Angular", 
                  style: new TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16.0))
              ],
            ),
          ),
          new Icon(Icons.favorite, color: Colors.red),
          new Text(" 100", style: new TextStyle(fontSize: 16.0)),
        ],
      ),
    );
    return new MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: ListView(
          children: <Widget>[
            new Image.asset(
              "images/image.jpg",
              fit: BoxFit.cover,
            ),
            titleSection,
          ],
        ),
      ),
    );
  }
}