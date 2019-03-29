import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
         constraints: BoxConstraints.expand(),
         color: Colors.white,
         child: SingleChildScrollView(
           child: Column(
             children: <Widget>[
               SizedBox(
                 height: 140,
               ),
               Image.asset('ic_car_green.png'),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
                 child: Text(
                   "Welcome back!",
                   style: TextStyle(fontSize: 22, color: Color(0xff333333)),
                 ),
               ),
               Text(
                 "Login to continue using iCab",
                 style: TextStyle(fontSize: 16, color: Color(0xff606470)),
               ),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 145, 0, 20),
                 child: TextField(
                   style: TextStyle(fontSize: 18, color: Colors.black),
                 ),
               )
             ],
           ),
         ),
       ),
    );
  }
}