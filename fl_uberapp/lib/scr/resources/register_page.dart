import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:fl_uberapp/scr/blocs/auth_bloc.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  AuthBloc authBloc = new AuthBloc();

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   iconTheme: IconThemeData(color: Color(0xff3277D8)),
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      // ),
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
              Image.asset("ic_car_red.png"),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text(
                  "Welcome Aboard!",
                  style: TextStyle(fontSize: 22, color: Color(0xff333333)),
                ),
              ),
              Text(
                "Signup with iCab in simple steps",
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
                child: StreamBuilder<Object>(
                  stream: authBloc.nameStream,
                  builder: (context, snapshot) {
                    return TextField(
                      controller: _nameController,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      decoration: InputDecoration(
                        errorText: snapshot.hasError ? snapshot.error : null,
                        labelText: "Name",
                        prefixIcon: Container(
                          width: 50,
                          child: Image.asset("ic_user.png"),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffCED0D2), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6))
                        ),
                      ),
                    );
                  }
                ),
              ),
              StreamBuilder<Object>(
                stream: authBloc.phoneStream,
                builder: (context, snapshot) {
                  return TextField(
                    controller: _phoneController,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    decoration: InputDecoration(
                      errorText: snapshot.hasError ? snapshot.error : null,
                      labelText: "Phone Number",
                      prefixIcon: Container(
                        width: 50,
                        child: Image.asset("ic_phone.png"),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                      ),
                    ),
                  );
                }
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: StreamBuilder<Object>(
                  stream: authBloc.emailStream,
                  builder: (context, snapshot) {
                    return TextField(
                      controller: _emailController,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      decoration: InputDecoration(
                        errorText: snapshot.hasError ? snapshot.error : null,
                        labelText: "Email",
                        prefixIcon: Container(
                          width: 50,
                          child: Image.asset("ic_mail.png"),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffCED0D2), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6))
                        ),
                      ),
                    );
                  }
                ),
              ),
              StreamBuilder<Object>(
                stream: authBloc.passStream,
                builder: (context, snapshot) {
                  return TextField(
                    controller: _passController,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                      errorText: snapshot.hasError ? snapshot.error : null,
                      labelText: "Password",
                      prefixIcon: Container(
                        width: 50,
                        child: Image.asset("ic_lock.png"),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                      ),
                    ),
                  );
                }
              ),
              Padding(
                 padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                 child: SizedBox(
                   width: double.infinity,
                   height: 52,
                   child: RaisedButton(
                     onPressed: () {

                     },
                     child: Text(
                       "Signup",
                       style: TextStyle(color: Colors.white, fontSize: 18),
                     ),
                     color: Color(0xff3277D8),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(6))
                     ),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 40),
                 child: RichText(
                   text: TextSpan(
                     text: "Already a User? ",
                     style: TextStyle(color: Color(0xff606470), fontSize: 16),
                     children: <TextSpan>[
                       TextSpan(
                         recognizer: TapGestureRecognizer()
                         ..onTap = () {
                           Navigator.pop(context);
                          },
                         text: "Login now",
                         style: TextStyle(fontSize: 16, color: Color(0xff3277D8))
                       )
                     ]
                   ),
                 ),
               )
            ],
          ),
        ),
      ),
    );
  }
}