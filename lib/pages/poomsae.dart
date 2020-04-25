import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/abstract_structure.dart';
import 'package:taekwondoguide/widgets/card_bigger_font.dart';

class Poomsae extends AbstractStructure {
  final _poomsaeCollection = [
    'Taeguk Il Jang',
    'Taeguk Ee Jang',
    'Taeguk Sam Jang',
    'Taeguk Sa Jang',
    'Taeguk Oh Jang',
    'Taeguk Yuk Jang',
    'Taeguk Chil Jang',
    'Taeguk Pal Jang',
    'Poomsae Koryo',
    'Poomsae Keumgang',
    'Poomsae Taebaek',
    'Poomsae Pyongwon',
    'Poomsae Sipjin',
    'Poomsae Jitae',
    'Poomsae Chonkwon',
    'Poomsae Hansu',
    'Poomsae Ilyeo',
  ];

  @override
  Widget buildPageBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: ListView.builder(
          itemCount: _poomsaeCollection.length,
          itemBuilder: (context, index) {
            return CardBiggerFont('${_poomsaeCollection[index]}');
          }),
    );
  }
}
