import 'package:flutter/material.dart';
import 'package:taekwondoguide/widgets/CardBiggerFont.dart';
import 'package:taekwondoguide/widgets/CustomAppBar.dart';
import 'package:taekwondoguide/widgets/NavDrawer.dart';

class Maengse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: CustomAppBar(),
      body: _buildMangse(context),
    );
  }

  Widget _buildMangse(BuildContext context) {
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
