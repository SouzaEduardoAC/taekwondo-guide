import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/AbstractStructure.dart';
import 'package:taekwondoguide/widgets/CardBiggerFont.dart';

class SonKiSul extends AbstractStructure {
  @override
  Widget buildPageBody(BuildContext context) {
    return ListView(
      children: <Widget>[
        // 8 GUB
        CardBiggerFont('Ap sogui an palmõk momtong retchio makkô\nAp kubi djumõk olgul tchirugui'),
        CardBiggerFont('Ap sogui momtong retchio makkô\nAp kubi tchotchiô tchirugui'),
        CardBiggerFont('Tuit kubi an palmõk momtong godrô makkô\nAp kubi olgul barô dolio tchirugui'),
        CardBiggerFont('Tuit kubi han sonnal are makkô\nAp kubi han sonnal olgul makkô\nPyõn djumôk opfô barô tchirugui'),
        CardBiggerFont('Tuit kubi han sonnal momtong makkô\nAp kubi pyõn djumõk momtong barô seuô tchirugui'),
        // 7 GUB
        CardBiggerFont('Tuit kubi are godrô makkô\nAp kubi pyõn djumok barô seuô tchirgui'),
        CardBiggerFont('Tuit kubi an palmõk momtong godrô makkô\nAp kubi pyõn djumok barô tchirgui'),
        CardBiggerFont('Tuit kubi sonnal are godrô makkô\nAp kubi pyõnson kut opfô tchirgui'),
        CardBiggerFont('Tuit kubi are godrô makkô\nAp kubi jebipfum mok tchigui'),
        // 6 GUB
        CardBiggerFont('Tuit kubi sonnal makkô\nAp Kubi Pyõng Sonkut Seuô Tchirugui'),
        CardBiggerFont('Ap kubi jebipfum mok tchigô\nAp sogui momtong barô tchirugui'),
        CardBiggerFont('Ap kubi momtong makkô\nDubom tchirugui'),
        CardBiggerFont('Tuit kubi dung palmõk momtong makkô\nTorá\nTuit kubidung jumok olgul pakat tchigui'),
        CardBiggerFont('Tuit kubi mit palmõk momtong makkô\nTchutchum sogui momtong yop tchirugui')
      ],
    );
  }
}