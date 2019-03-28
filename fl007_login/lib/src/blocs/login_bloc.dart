import 'dart:async';
import 'package:fl007_login/src/validators/validations.dart';

class LoginBloc {
  StreamController _userController = new StreamController();
  StreamController _passController = new StreamController();

  Stream get userStream => _userController.stream;
  Stream get passStream => _passController.stream;

  bool isValidInfo(String user, String pass) {
    if (!Validations.isValidUser(user)) {
      _userController.sink.addError("Tai khoan khong hop le");
      return false;
    }
    _userController.sink.add("OK");

    if (!Validations.isValidPass(pass)) {
      _passController.sink.addError("Mat khau phai tren 6 ky tu");
      return false;
    }
    _passController.sink.add("OK");
    
    return true;
  }

  void dispose() {
    _userController.close();
    _passController.close();
  }
}