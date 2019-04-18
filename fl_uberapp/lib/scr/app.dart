import 'package:flutter/material.dart';
import 'package:fl_uberapp/scr/resources/login_page.dart';
import 'package:fl_uberapp/scr/blocs/auth_bloc.dart';

class MyApp extends InheritedWidget {
  final AuthBloc authBloc;
  final Widget child;

  MyApp(this.authBloc, this.child) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }

  static MyApp of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(MyApp);
  }
}