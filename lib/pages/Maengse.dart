import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/AbstractStructure.dart';
import 'package:taekwondoguide/widgets/CardBiggerFont.dart';

class Maengse extends AbstractStructure {
  final _maengse = [
    'Observar as regras do Taekwondo',
    'Respeitar instrutores e superiores',
    'Nunca fazer mal uso do Taekwondo',
    'Construir um mundo mais pacífico',
    'Ser campeão da liberdade e da justiça'
  ];

  @override
  Widget buildPageBody(BuildContext context) {
    return ListView.builder(itemCount: _maengse.length, itemBuilder: (context, index) {
      return CardBiggerFont('${_maengse[index]}');
    });
  }
}
