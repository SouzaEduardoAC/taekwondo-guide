import 'package:flutter/material.dart';
import 'package:taekwondoguide/pages/AbstractStructure.dart';
import 'package:taekwondoguide/widgets/PlayerVideoAndPop.dart';

class Poomsae extends AbstractStructure {
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _taegukIlJang = 'www.youtube.com/watch?v=bfO_UUc32dc';
  final _taegukEeJang = 'https://www.youtube.com/watch?v=a0oo0SsS29U';
  final _taegukSamJang = 'www.youtube.com/watch?v=S2ofJsatGGg';
  final _taegukSaJang = 'https://www.youtube.com/watch?v=eSVIFCKH8EA';
  final _taegukOhJang = 'https://www.youtube.com/watch?v=APu5dDLg6Uc';
  final _taegukYukJang = 'https://www.youtube.com/watch?v=DSUnv5b06gY';
  final _taegukChilJang = 'https://www.youtube.com/watch?v=jewGP4sEFv0';
  final _taegukPalJang = 'https://www.youtube.com/watch?v=8tsVR4cJvRU';

  @override
  Widget buildPageBody(BuildContext context) {
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
        _buildCard(context, 'Poomsae Koryo', ''),
        _buildCard(context, 'Poomsae Keumgang', ''),
        _buildCard(context, 'Poomsae Taebaek', ''),
        _buildCard(context, 'Poomsae Pyongwon', ''),
        _buildCard(context, 'Poomsae Sipjin', ''),
        _buildCard(context, 'Poomsae Jitae', ''),
        _buildCard(context, 'Poomsae Chonkwon', ''),
        _buildCard(context, 'Poomsae Hansu', ''),
        _buildCard(context, 'Poomsae Ilyeo', ''),
      ],
    );
  }

  GestureDetector _buildCard(context, cardText, videoPath) {
    return new GestureDetector(
        child: Card(
            child: ListTile(
                title: Text(cardText, style: _biggerFont),
                trailing: Icon(videoPath == '' ? null : Icons.video_library))
        ),
        onTap: () {
          if (videoPath == null || videoPath == '') return;
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
