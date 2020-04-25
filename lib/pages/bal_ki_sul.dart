import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/abstract_structure.dart';
import 'package:taekwondoguide/widgets/card_bigger_font.dart';

class BalKiSul extends AbstractStructure {
  final _balKiSulCollection = [
    'Murup olio tchigui',
    'Murup dolio tchigui',
    'Ap tchagui',
    'Miro tchagui',
    'Dolio tchagui',
    'Bandal tchagui',
    'Natchuo dolio tchagui',
    'An tchagui',
    'Pakat tchagui',
    'Yop tchagui',
    'Tuio nopi ap tchagui',
    'Ap bal nakka tchagui',
    'Tuit bal rurio tchagui',
    'Ap bal nerio tchagui',
    'Tuit bal podo tchagui',
    'Kullo ap tchagui',
    'Kullo an tchagui',
    'Kullo yop tchagui',
    'Kullo dolio tchagui',
    'Kullo rurio tchagui',
    'Kullo miro tchagui',
    'Mondolio rurio tchagui',
    'Natchuô mondolio rurio tchagui',
    'Mondolio yop tchagui',
    'Mondolio nêrio tchagui',
    'On mondolio yop tchagui',
    'On mondolio rurio tchagui',
    'Ban mondolio nakka tchagui',
    'Ban mondolio nerio tchagui',
    'Ban mondolio yop tchagui',
    'Tuit tchagui',
    'Ap bal tuio ap tchagui',
    'Ap bal tuio an tchagui',
    'Ap bal tuio yop tchagui',
    'Tuit bal tuio nagamiô rurio tchagui',
    'Tuit bal tuio nagamiô dolio tchagui',
    'Tuit bal tuio nagamiô yop tchagui',
    'Banderô dolio tchagui',
    'Banderô an tchagui',
    'Dubal dansong an tchagui',
    'Dubal dansong nerio tchagui',
    'Dubal dansong dolio tchagui',
    'Dubal dansong yop tchagui',
    'Dubal dansong rurio tchagui',
    'Tuio tuit tchagui',
    'Tuio mon dolio nerio tchagui',
    'Natchuô mon dolio rurio tchagi',
    'Mondolio rurio tchagui'
  ];

  Widget buildPageBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          itemCount: _balKiSulCollection.length,
          itemBuilder: (context, index) {
            return CardBiggerFont('${_balKiSulCollection[index]}');
          }),
    );
  }
}
