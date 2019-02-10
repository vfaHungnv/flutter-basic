import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MainPage extends StatefulWidget {
  final String title;
  MainPage({this.title}): super();
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new MainPageState();
    }
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new GridView.extent(
          maxCrossAxisExtent: 120.0,
          children: _buildGridTiles(15),
        ),
      ),
    );
  }
}

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers = new List<Container>.generate(numberOfTiles, (int index) {
    final imageName = index < 9 ? 'images/image_0${index + 1}.JPG' : 'images/image${index + 1}.JPG';
    return new Container(
      child: new Image.asset(imageName),
    );
  });
  return containers;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      home: new MainPage(title: "GridView with images"),
    );
  }
}
