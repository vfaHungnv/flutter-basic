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
                  child: new Text("Oeschinen Lake Campground",  
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                      )),
                ),
                new Text("Kandersteg, Switzerland", 
                  style: new TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16.0))
              ],
            ),
          ),
          new Icon(Icons.star, color: Colors.red),
          new Text(" 41", style: new TextStyle(fontSize: 16.0)),
        ],
      ),
    );

    Widget buildButton(IconData icon, String buttonTitle) {
      final Color tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(buttonTitle, 
            style: new TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: tintColor,
              ),
            ),
          ),
        ],
      );
    }

    Widget fourButtonsSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildButton(Icons.home, "Home"),
          buildButton(Icons.arrow_back, "Back"),
          buildButton(Icons.arrow_forward, "Next"),
          buildButton(Icons.share, "Share"),
        ],
      ),
    );

    Widget bottomTextSection = new Container(
      padding: const EdgeInsets.all(20.0),
      child: new Text('''Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.''',
        style: new TextStyle(
          color: Colors.grey[850],
          fontSize: 16.0
        ),
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
            fourButtonsSection,
            bottomTextSection,
          ],
        ),
      ),
    );
  }
}