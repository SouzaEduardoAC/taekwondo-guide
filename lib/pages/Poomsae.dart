import 'package:flutter/material.dart';
import 'package:taekwondoguide/widgets/CustomAppBar.dart';
import 'package:taekwondoguide/widgets/NavDrawer.dart';
import 'package:taekwondoguide/widgets/PlayerVideoAndPop.dart';

class Poomsae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: CustomAppBar(),
      body: _PoomsaeBodyWidget(),
    );
  }
}

class _PoomsaeBodyWidget extends StatelessWidget {
  _PoomsaeBodyWidget({Key key}) : super(key: key);
  final _biggerFont = const TextStyle(fontSize: 18.0);

  final _taegukIlJang = 'assets/videos/1_taeguk_il_jang.mp4';
  final _taegukEeJang = 'assets/videos/2_taeguk_yi_jang.mp4';
  final _taegukSamJang = 'assets/videos/3_taeguk_sam_jang.mp4';
  final _taegukSaJang = 'assets/videos/4_taeguk_sa_jang.mp4';
  final _taegukOhJang = 'assets/videos/5_taeguk_oh_jang.mp4';
  final _taegukYukJang = 'assets/videos/6_taeguk_yook_jang.mp4';
  final _taegukChilJang = 'assets/videos/7_taeguk_chil_jang.mp4';
  final _taegukPalJang = 'assets/videos/8_taeguk_pal_jang.mp4';

  @override
  Widget build(BuildContext context) {
    return _buildPoomsaeList(context);
  }

  Widget _buildPoomsaeList(context) {
    return ListView(
      children: <Widget>[
        _buildCard(context, 'Taeguk Il Jang', _taegukIlJang),
        _buildCard(context, 'Taeguk Ee Jang', _taegukEeJang),
        _buildCard(context, 'Taeguk Sam Jang', _taegukSamJang),
        _buildCard(context, 'Taeguk Sa Jang', _taegukSaJang),
        _buildCard(context, 'Taeguk Oh Jang', _taegukOhJang),
        _buildCard(context, 'Taeguk Yuk Jang', _taegukYukJang),
        _buildCard(context, 'Taeguk Chil Jang', _taegukChilJang),
        _buildCard(context, 'Taeguk Pal Jang', _taegukPalJang),
      ],
    );
  }

  GestureDetector _buildCard(context, cardText, videoPath) {
    return new GestureDetector(
        child: Card(child: ListTile(title: Text(cardText, style: _biggerFont))),
        onTap: () {
          Navigator.push<PlayerVideoAndPop>(
            context,
            MaterialPageRoute<PlayerVideoAndPop>(
              builder: (BuildContext context) =>
              new PlayerVideoAndPop(videoPath),
            ),
          );
        }
    );
  }
}
