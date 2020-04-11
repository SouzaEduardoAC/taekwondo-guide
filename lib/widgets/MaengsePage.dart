import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomAppBar.dart';
import 'NavDrawer.dart';

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
        Card(
          child: ListTile(
            title: Text(
              'Observar as regras do Taekwondo',
              style: _biggerFont,
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(
              'Respeitar instrutores e superiores',
              style: _biggerFont,
            ),
          )
        ),
        Card(
          child: ListTile(
              title: Text(
                'Nunca fazer mal uso do Taekwondo',
                style: _biggerFont,
              ),
            )
        ),
        Card(
          child: ListTile(
            title: Text('Construir um mundo mais pacífico', style: _biggerFont,),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(
              'Ser campeão da liberdade e da justiça',
              style: _biggerFont,
            ),
          ),
        )
      ],
    );
  }
}
