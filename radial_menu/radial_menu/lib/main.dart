import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _buildMenu() {
    return IconButton(
          icon: Icon(
            Icons.cancel,
          ),
          onPressed: () {},
        );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _buildMenu(),
        title: Text(''),
        actions: <Widget>[
          _buildMenu(),
        ],
      ),
      body: Stack(
        children: <Widget>[
          // Center
          Align(
            alignment: Alignment.center,
            child: _buildMenu(),
          ),
          
          // Middle Left
          Align(
            alignment: Alignment.centerLeft,
            child: _buildMenu(),
          ),

          // Middle Right
          Align(
            alignment: Alignment.centerRight,
            child: _buildMenu(),
          ),
          // Bottom Left
          Align(
            alignment: Alignment.bottomLeft,
            child: _buildMenu(),
          ),

          // Bottom right 
          Align(
            alignment: Alignment.bottomRight,
            child: _buildMenu(),
          ),

          RadiaMenu(
            anchor: Offset(100.0, 100.0),
          ),
        ],
      ),
    );
  }
}

class AnchoredRadiaMenu extends StatefulWidget {
  final Widget child;

  AnchoredRadiaMenu({
    this.child,
  });

  @override
  _AnchoredRadiaMenuState createState() => _AnchoredRadiaMenuState();
}

class _AnchoredRadiaMenuState extends State<AnchoredRadiaMenu> {
  @override
  Widget build(BuildContext context) {
    return AnchoredOverlay(
      showOverlay: true,
      
      child: widget.child,
    );
  }
}

class RadiaMenu extends StatefulWidget {
  final Offset anchor;

  RadiaMenu({
    this.anchor,
  });

  @override
  _RadiaMenu createState() => _RadiaMenu();
}

class _RadiaMenu extends State<RadiaMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      position: widget.anchor,
      child: Container(
        width: 50.0,
        height: 50.0,
        color: Colors.red,
      ),
    );
  }
}