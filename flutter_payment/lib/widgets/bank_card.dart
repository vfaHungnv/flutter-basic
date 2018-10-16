import 'package:flutter/material.dart';
import 'package:flutter_payment/models/bank_card_model.dart';

class BankCard extends StatelessWidget {
  final BankCardModel card;
  BankCard({this.card});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 150.0,
      width: 252.0,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(card.bgAsset), fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 16.0),
                    child: Text(
                      'BALANCE', 
                      textAlign: TextAlign.left, 
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 10.0, 
                        fontWeight: FontWeight.bold),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      '\$ ${card.balance}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    card.accountNumber,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'VALID\nTHRU',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: card.bgAsset == 'images/bg_purple_card.png' || card.bgAsset == 'images/bg_blue_card.png' ? Colors.grey : Colors.black,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          card.validDate,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 4.0),
                  child: Text(
                    card.name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: card.bgAsset == 'images/bg_purple_card.png' || card.bgAsset == 'images/bg_blue_card.png' ? Colors.grey : Color(0xFF253C70),
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}