import 'package:flutter/material.dart';
import 'package:flutter_payment/widgets/bank_card.dart';
import 'package:flutter_payment/models/bank_card_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<BankCardModel> cards = [
    BankCardModel('images/bg_red_card.png', 'Nguyen Van Hung', '4221 5168 7464 2283', '08/20', 10000000),
    BankCardModel('images/bg_blue_circle_card.png', 'Nguyen Van Hung', '4221 5168 7464 2283', '08/20', 10000000),
    BankCardModel('images/bg_purple_card.png', 'Nguyen Van Hung', '4221 5168 7464 2283', '08/20', 10000000),
    BankCardModel('images/bg_blue_card.png', 'Nguyen Van Hung', '4221 5168 7464 2283', '08/20', 10000000),
  ];
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
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
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
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
            child: Text('My Bank Accounts'),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            height: 166.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return _getBankCard(index);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _sendMoneySectionWidget() {

  }

  Widget _utilitesSectionWidget() {

  }

  Widget _getBankCard(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BankCard(card: cards[index]),
    );
  }
}