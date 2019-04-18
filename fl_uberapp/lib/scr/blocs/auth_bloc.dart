import 'dart:async';
import 'package:fl_uberapp/scr/fire_base/fire_base_auth.dart';

class AuthBloc {
  var _firAuth = FirAuth();

  StreamController _nameController = new StreamController();
  StreamController _emailController = new StreamController();
  StreamController _passController = new StreamController();
  StreamController _phoneController = new StreamController();

  Stream get nameStream => _nameController.stream;
  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;
  Stream get phoneStream => _phoneController.stream;

  bool isValid(String name, String email, String pass, String phone) {
    if (name == null || name.length == 0) {
      _nameController.sink.addError("Nhap ten");
      return false;
    }
    _nameController.sink.add("");

    if (phone == null || phone.length == 0) {
      _phoneController.sink.addError("Nhap so dien thoai");
      return false;
    }
    _phoneController.sink.add("");

    if (email == null || email.length == 0) {
      _emailController.sink.addError("Nhap email");
      return false;
    }
    _emailController.sink.add("");

    if (pass == null || pass.length < 6) {
      _passController.sink.addError("Mat khau phai tren 5 ky tu");
      return false;
    }
    _passController.sink.add("");

    return true;
  }

  void signUp(String email, String pass, String name, String phone, Function onSuccess, Function(String) onRegisterError) {
    _firAuth.signUp(email, pass, name, phone, onSuccess, onRegisterError);
  }

  void signIn(String email, String pass, Function onSuccess, Function(String) onSignInError) {
    _firAuth.signIn(email, pass, onSuccess, onSignInError);
  }

  void dispose() {
    _nameController.close();
    _emailController.close();
    _passController.close();
    _phoneController.close();
  }
}