import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/abstract_structure.dart';
import 'package:taekwondoguide/widgets/card_bigger_font.dart';

class SonKiSul extends AbstractStructure {
  final _sonKiSulCollection = [
    'Ap sogui an palmõk momtong retchio makki',
    'Ap sogui momtong retchio makki',
    'Tuit kubi an palmõk momtong godrô makki',
    'Tuit kubi han sonnal are makki',
    'Ap kubi han sonnal olgul makki',
    'Tuit kubi han sonnal momtong makki',
    'Tuit kubi are godrô makki',
    'Tuit kubi an palmõk momtong godrô makki',
    'Tuit kubi sonnal are godrô makki',
    'Tuit kubi are godrô makki',
    'Tuit kubi sonnal makki',
    'Ap kubi momtong makki',
    'Tuit kubi dung palmõk momtong makki',
    'Tuit kubi mit palmõk momtong makki',
    'Ap kubi djumõk olgul tchirugui',
    'Ap kubi tchotchiô tchirugui',
    'Ap kubi olgul barô dolio tchirugui',
    'Pyõn djumôk opfô barô tchirugui',
    'Ap kubi pyõn djumõk momtong barô seuô tchirugui',
    'Ap kubi pyõn djumok barô seuô tchirgui',
    'Ap kubi pyõn djumok barô tchirgui',
    'Ap kubi pyõnson kut opfô tchirgui',
    'Ap kubi jebipfum mok tchigui',
    'Ap Kubi Pyõng Sonkut Seuô Tchirugui',
    'Ap kubi jebipfum mok tchigui',
    'Ap sogui momtong barô tchirugui',
    'Dubom tchirugui',
    'Tuit kubidung jumok olgul pakat tchigui',
    'Tchutchum sogui momtong yop tchirugui'
  ];

  @override
  Widget buildPageBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          itemCount: _sonKiSulCollection.length,
          itemBuilder: (context, index) {
            return CardBiggerFont('${_sonKiSulCollection[index]}');
          }),
    );
  }
}
