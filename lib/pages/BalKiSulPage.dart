import 'package:flutter/material.dart';
import 'package:handoryu/widgets/CardBiggerFont.dart';
import 'package:handoryu/widgets/CustomAppBar.dart';
import 'package:handoryu/widgets/NavDrawer.dart';

class BalKiSulPage extends StatelessWidget {
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
        CardBiggerFont('Dubal dansong ap tchagui'),
        CardBiggerFont('Dubal dansong an tchagui'),
        CardBiggerFont('Dubal dansong nerio tchagui'),
        CardBiggerFont('Dubal dansong dolio tchagui'),
        CardBiggerFont('Dubal dansong yop tchagui'),
        CardBiggerFont('Dubal dansong rurio tchagui'),
        CardBiggerFont('Tuio tuit tchagui'),
        CardBiggerFont('Tuio mon dolio nerio tchagui'),
        CardBiggerFont('Natchuô mon dolio rurio tchagô\nMon dolio rurio tchagui'),
      ],
    );
  }
}