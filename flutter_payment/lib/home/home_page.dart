import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double screenWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return _userInfoWidget();
              break;
            case 1:
              return _userBankCardsWidget();
              break;
            case 2:
              return _sendMoneySectionWidget();
              break;
            default:
              return _utilitesSectionWidget();
              break;
          }
        },
      ),
    );
  }

  Widget _userInfoWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  child: Text('H'),
                ),
                Container(
                  child: Text('HungNV', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700),),
                )
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Icon(Icons.notifications_none, size: 30.0,),
              ),
              new Positioned(
                top: 3.0,
                left: 3.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFE95482),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text('02', style: TextStyle(color: Colors.white, fontSize: 10.0, fontWeight: FontWeight.w700),),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _userBankCardsWidget() {

  }

  Widget _sendMoneySectionWidget() {

  }

  Widget _utilitesSectionWidget() {

  }

}