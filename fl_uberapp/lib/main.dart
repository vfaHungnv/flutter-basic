import 'package:flutter/material.dart';
import 'package:fl_uberapp/scr/app.dart';
import 'package:fl_uberapp/scr/blocs/auth_bloc.dart';
import 'package:fl_uberapp/scr/resources/login_page.dart';

void main() => runApp(MyApp(new AuthBloc(), MaterialApp(
  home: LoginPage(),
  debugShowCheckedModeBanner: false,
)));