import 'package:flutter/material.dart';
import 'package:handoryu/widgets/CustomAppBar.dart';
import 'package:handoryu/widgets/NavDrawer.dart';

class BalKiSulPage extends StatelessWidget {
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
        _buildCard('Dubal dansong ap tchagui'),
        _buildCard('Dubal dansong an tchagui'),
        _buildCard('Dubal dansong nerio tchagui'),
        _buildCard('Dubal dansong dolio tchagui'),
        _buildCard('Dubal dansong yop tchagui'),
        _buildCard('Dubal dansong rurio tchagui'),
        _buildCard('Tuio tuit tchagui'),
        _buildCard('Tuio mon dolio nerio tchagui'),
        _buildCard('Natchuô mon dolio rurio tchagô\nMon dolio rurio tchagui'),
      ],
    );
  }

  Card _buildCard(text) =>
      Card(child: ListTile(title: Text(text, style: _biggerFont)));
}