import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/abstract_structure.dart';
import 'package:taekwondoguide/widgets/card_bigger_font.dart';

class Maengse extends AbstractStructure {
  final _maengseCollection = [
    'Observar as regras do Taekwondo',
    'Respeitar instrutores e superiores',
    'Nunca fazer mal uso do Taekwondo',
    'Construir um mundo mais pacífico',
    'Ser campeão da liberdade e da justiça'
  ];

  @override
  Widget buildPageBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          itemCount: _maengseCollection.length,
          itemBuilder: (context, index) {
            return CardBiggerFont('${_maengseCollection[index]}');
          }),
    );
  }
}
