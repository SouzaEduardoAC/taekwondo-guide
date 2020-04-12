import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handoryu/widgets/CustomAppBar.dart';
import 'package:handoryu/widgets/NavDrawer.dart';

class MaengsePage extends StatelessWidget {
  final _biggerFont = const TextStyle(fontSize: 18.0);

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
        _buildCard('Observar as regras do Taekwondo'),
        _buildCard('Respeitar instrutores e superiores'),
        _buildCard('Nunca fazer mal uso do Taekwondo'),
        _buildCard('Construir um mundo mais pacífico'),
        _buildCard('Ser campeão da liberdade e da justiça')
      ],
    );
  }

  Card _buildCard(text) =>
    Card(child: ListTile(title: Text(text, style: _biggerFont)));
}
