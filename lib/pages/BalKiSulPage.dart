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
        // 8 GUB
        CardBiggerFont('Mondolio rurio tchagui'),
        CardBiggerFont('Natchuô mondolio rurio tchagui'),
        CardBiggerFont('Mondolio yop tchagui'),
        CardBiggerFont('Mondolio nêrio tchagui'),
        CardBiggerFont('On mondolio yop tchagui'),
        CardBiggerFont('On mondolio rurio tchagui'),
        CardBiggerFont('Ban mondolio nakka tchagui'),
        CardBiggerFont('Ban mondolio nerio tchagui'),
        CardBiggerFont('Ban mondolio yop tchagui'),
        CardBiggerFont('Tuit tchagui'),
        // 7 GUB
        CardBiggerFont('Ap bal tuio ap tchagui'),
        CardBiggerFont('Ap bal tuio an tchagui'),
        CardBiggerFont('Ap bal tuio yop tchagui'),
        CardBiggerFont('Tuit bal tuio nagamiô rurio tchagui'),
        CardBiggerFont('Tuit bal tuio nagamiô dolio tchagui'),
        CardBiggerFont('Tuit bal tuio nagamiô yop tchagui'),
        CardBiggerFont('Banderô dolio tchagui'),
        CardBiggerFont('Banderô an tchagui'),
        // 6 GUB
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