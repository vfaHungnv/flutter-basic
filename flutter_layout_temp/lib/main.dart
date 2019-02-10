import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("Demo"),
        ),
        body: new Image.asset(
          "images/image-devices.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}