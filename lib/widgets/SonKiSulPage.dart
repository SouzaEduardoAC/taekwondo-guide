import 'package:flutter/material.dart';
import 'package:handoryu/widgets/CustomAppBar.dart';
import 'package:handoryu/widgets/NavDrawer.dart';

class SonKiSulPage extends StatelessWidget {
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: CustomAppBar(),
      body: _buildListView(context),
    );
  }

  Widget _buildListView(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildCard('Tuit kubi sonnal makkô\nAp Kubi Pyõng Sonkut Seuô Tchirugui'),
        _buildCard('Ap kubi jebipfum mok tchigô\nAp sogui momtong barô tchirugui'),
        _buildCard('Ap kubi momtong makkô\nDubom tchirugui'),
        _buildCard('Tuit kubi dung palmõk momtong makkô\nTorá\nTuit kubidung jumok olgul pakat tchigui'),
        _buildCard('Tuit kubi mit palmõk momtong makkô\nTchutchum sogui momtong yop tchirugui')
      ],
    );
  }

  Card _buildCard(text) =>
      Card(child: ListTile(title: Text(text, style: _biggerFont)));
}