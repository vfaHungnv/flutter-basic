import 'package:flutter/material.dart';

void main() {
  runApp(MaterialExample());
}

class MaterialExample extends StatefulWidget {
  @override
  _MaterialExampleState createState() => _MaterialExampleState();
}

class _MaterialExampleState extends State<MaterialExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Material Example"),
        ),
        body: Center(
          child: Text(
            "Hello HungNV", 
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("Drawer Header"),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                ),
              ),
              ListTile(
                title: Text("Item 1"),
                onTap: () {
                  
                },
              ),
              ListTile(
                title: Text("Item 2"),
                onTap: () {
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}