import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/AbstractStructure.dart';
import 'package:taekwondoguide/widgets/CardBiggerFont.dart';

class BalKiSul extends AbstractStructure {
  Widget buildPageBody(BuildContext context) {
    return ListView(
      children: <Widget>[
        // 10 GUB
        CardBiggerFont('Murup olio tchigui'),
        CardBiggerFont('Murup dolio tchigui'),
        CardBiggerFont('Ap tchagui'),
        CardBiggerFont('Miro tchagui'),
        CardBiggerFont('Dolio tchagui'),
        CardBiggerFont('Bandal tchagui'),
        CardBiggerFont('Natchuo dolio tchagui'),
        CardBiggerFont('An tchagui'),
        CardBiggerFont('Pakat tchagui'),
        CardBiggerFont('Yop tchagui'),
        CardBiggerFont('Tuio nopi ap tchagui'),
        // 9 GUB
        CardBiggerFont('Ap bal nakka tchagui'),
        CardBiggerFont('Tuit bal rurio tchagui'),
        CardBiggerFont('Ap bal nerio tchagui'),
        CardBiggerFont('Tuit bal podo tchagui'),
        CardBiggerFont('Kullo ap tchagui'),
        CardBiggerFont('Kullo an tchagui'),
        CardBiggerFont('Kullo yop tchagui'),
        CardBiggerFont('Kullo dolio tchagui'),
        CardBiggerFont('Kullo rurio tchagui'),
        CardBiggerFont('Kullo miro tchagui'),
        // 8 GUB
        CardBiggerFont('Mondolio rurio tchagui'),
        CardBiggerFont('Natchuô mondolio rurio tchagui'),
        CardBiggerFont('Mondolio yop tchagui'),
        CardBiggerFont('Mondolio nêrio tchagui'),
        CardBiggerFont('On mondolio yop tchagui'),
        CardBiggerFont('On mondolio rurio tchagui'),
        CardBiggerFont('Ban mondolio nakka tchagui'),
        CardBiggerFont('Ban mondolio nerio tchagui'),
        CardBiggerFont('Ban mondolio yop tchagui'),
        CardBiggerFont('Tuit tchagui'),
        // 7 GUB
        CardBiggerFont('Ap bal tuio ap tchagui'),
        CardBiggerFont('Ap bal tuio an tchagui'),
        CardBiggerFont('Ap bal tuio yop tchagui'),
        CardBiggerFont('Tuit bal tuio nagamiô rurio tchagui'),
        CardBiggerFont('Tuit bal tuio nagamiô dolio tchagui'),
        CardBiggerFont('Tuit bal tuio nagamiô yop tchagui'),
        CardBiggerFont('Banderô dolio tchagui'),
        CardBiggerFont('Banderô an tchagui'),
        // 6 GUB
        CardBiggerFont('Dubal dansong an tchagui'),
        CardBiggerFont('Dubal dansong nerio tchagui'),
        CardBiggerFont('Dubal dansong dolio tchagui'),
        CardBiggerFont('Dubal dansong yop tchagui'),
        CardBiggerFont('Dubal dansong rurio tchagui'),
        CardBiggerFont('Tuio tuit tchagui'),
        CardBiggerFont('Tuio mon dolio nerio tchagui'),
        CardBiggerFont('Natchuô mon dolio rurio tchagô\nMon dolio rurio tchagui'),
      ],
    );
  }
}