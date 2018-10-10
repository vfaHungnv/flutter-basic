import 'package:flutter/material.dart';
import 'package:flutter_payment/models/bank_card_model.dart';

class BankCard extends StatelessWidget {
  final BankCardModel card;
  BankCard({this.card})

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
            
          ),
        ],
      ),
    );
  }
}