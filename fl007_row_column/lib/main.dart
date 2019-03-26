import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row( //Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Canh khoang cach bang nhau
            crossAxisAlignment: CrossAxisAlignment.start, //Canh chinh cac phan tu con
            children: <Widget>[
              Container(width: 120, height: 120, color: Colors.green),
              Container(width: 100, height: 100, color: Colors.amber),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}