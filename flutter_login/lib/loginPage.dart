import 'package:flutter/material.dart';
import 'user.dart';

class LoginPageState extends State<LoginPage> {
  final User user = new User();
  @override
  Widget build(BuildContext context) {
    final TextField _txtUserName = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your username',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      onChanged: (text) {
        setState(() {
          this.user.username = text;
        });
      },
    );

    final TextField _txtEmail = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter your email',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      onChanged: (text) {
        setState(() {
          this.user.email = text;
        });
      },
    );

    final TextField _txtPassword = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter password',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      obscureText: true,
      onChanged: (text) {
        setState(() {
          this.user.password = text;
        });
      },
    );

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login page example'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            decoration: new BoxDecoration(
              color: new Color.fromARGB(255, 240, 240, 240),
              border: new Border.all(width: 1.2, color: Colors.black12),
              borderRadius: const BorderRadius.all(const Radius.circular(6.0)),
            ),
            child: _txtUserName,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            decoration: new BoxDecoration(
              color: new Color.fromARGB(255, 240, 240, 240),
              border: new Border.all(width: 1.2, color: Colors.black12),
              borderRadius: const BorderRadius.all(const Radius.circular(6.0)),
            ),
            child: _txtEmail,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            decoration: new BoxDecoration(
              color: new Color.fromARGB(255, 240, 240, 240),
              border: new Border.all(width: 1.2, color: Colors.black12),
              borderRadius: const BorderRadius.all(const Radius.circular(6.0)),
            ),
            child: _txtPassword,
          ),
          new Container(
            margin: new EdgeInsets.only(left: 20.0, right: 20.0),
            child: new Row(
              children: <Widget>[
                new Expanded(child: new RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: new Text('Login'),
                  onPressed: () {
                    print('Username: ${user.username}, email: ${user.email}, password: ${user.password}');
                  },
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      // TODO: implement createState
      return new LoginPageState();
    }
}