import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/AbstractStructure.dart';
import 'package:taekwondoguide/widgets/CardBiggerFont.dart';

class Maengse extends AbstractStructure {
  @override
  Widget buildPageBody(BuildContext context) {
    return ListView(
      children: <Widget>[
        CardBiggerFont('Observar as regras do Taekwondo'),
        CardBiggerFont('Respeitar instrutores e superiores'),
        CardBiggerFont('Nunca fazer mal uso do Taekwondo'),
        CardBiggerFont('Construir um mundo mais pacífico'),
        CardBiggerFont('Ser campeão da liberdade e da justiça')
      ],
    );
  }
}
