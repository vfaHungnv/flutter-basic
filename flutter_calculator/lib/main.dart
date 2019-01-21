import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calculator/input_page/input_page.dart';

void main() {
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
    .then((_) => runApp(new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Calculator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: InputPage(),
      );
    }
}