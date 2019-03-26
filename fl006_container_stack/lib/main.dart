import 'package:flutter/material.dart';
import 'dart:math';

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
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                width: 400,
                height: 400,
                color: Colors.green,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.amber,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
    /*return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            alignment: AlignmentDirectional.center,
            transform: Matrix4.rotationZ(30 * pi / 180), //Quay 30do
            // padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.amber, style: BorderStyle.solid),
            ),
            /*decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(width: 2, color: Colors.amber, style: BorderStyle.solid),
            ),*/
            child: Text(
              "Hello World",
              style: TextStyle(fontSize: 22, color: Colors.white),),
          ),
        ),
      ),
    );*/
  }
}