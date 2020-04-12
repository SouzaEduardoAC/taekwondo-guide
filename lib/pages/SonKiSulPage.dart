import 'package:flutter/material.dart';
import 'package:handoryu/widgets/CardBiggerFont.dart';
import 'package:handoryu/widgets/CustomAppBar.dart';
import 'package:handoryu/widgets/NavDrawer.dart';

class SonKiSulPage extends StatelessWidget {
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
        // 7 GUB
        CardBiggerFont('Tuit kubi are godrô makkô\nAp kubi pyõn djumok barô seuô tchirgui'),
        CardBiggerFont('Tuit kubi an palmõk momtong godrô makkô\nAp kubi pyõn djumok barô tchirgui'),
        CardBiggerFont('Tuit kubi sonnal are godrô makkô\nAp kubi pyõnson kut opfô tchirgui'),
        CardBiggerFont('Tuit kubi are godrô makkô\nAp kubi jebipfum mok tchigui'),
        // 6 GUB
        CardBiggerFont('Tuit kubi sonnal makkô\nAp Kubi Pyõng Sonkut Seuô Tchirugui'),
        CardBiggerFont('Ap kubi jebipfum mok tchigô\nAp sogui momtong barô tchirugui'),
        CardBiggerFont('Ap kubi momtong makkô\nDubom tchirugui'),
        CardBiggerFont('Tuit kubi dung palmõk momtong makkô\nTorá\nTuit kubidung jumok olgul pakat tchigui'),
        CardBiggerFont('Tuit kubi mit palmõk momtong makkô\nTchutchum sogui momtong yop tchirugui')
      ],
    );
  }
}