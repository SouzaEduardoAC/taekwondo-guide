import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handoryu/widgets/video/PlayerVideoAndPopPage.dart';

import 'CustomAppBar.dart';
import 'NavDrawer.dart';

class PoomsaePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: CustomAppBar(),
      body: PoomsaeBodyWidget(),
    );
  }
}

class PoomsaeBodyWidget extends StatelessWidget {
  PoomsaeBodyWidget({Key key}) : super(key: key);
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
        new GestureDetector(
          child: Card(
            child: ListTile(
              title: Text('Taeguk Il Jang', style: _biggerFont),
            ),
          ),
          onTap: () {
            Navigator.push<PlayerVideoAndPopPage>(
              context,
              MaterialPageRoute<PlayerVideoAndPopPage>(
                builder: (BuildContext context) =>
                new PlayerVideoAndPopPage(_taegukIlJang),
              ),
            );
          }
        ),
        new GestureDetector(
            child: Card(
              child: ListTile(
                title: Text('Taeguk Ee Jang', style: _biggerFont),
              ),
            ),
            onTap: () {
              Navigator.push<PlayerVideoAndPopPage>(
                context,
                MaterialPageRoute<PlayerVideoAndPopPage>(
                  builder: (BuildContext context) =>
                  new PlayerVideoAndPopPage(_taegukEeJang),
                ),
              );
            }
        ),
        new GestureDetector(
            child: Card(
              child: ListTile(
                title: Text('Taeguk Sam Jang', style: _biggerFont),
              ),
            ),
            onTap: () {
              Navigator.push<PlayerVideoAndPopPage>(
                context,
                MaterialPageRoute<PlayerVideoAndPopPage>(
                  builder: (BuildContext context) =>
                  new PlayerVideoAndPopPage(_taegukSamJang),
                ),
              );
            }
        ),
        new GestureDetector(
            child: Card(
              child: ListTile(
                title: Text('Taeguk Sa Jang', style: _biggerFont),
              ),
            ),
            onTap: () {
              Navigator.push<PlayerVideoAndPopPage>(
                context,
                MaterialPageRoute<PlayerVideoAndPopPage>(
                  builder: (BuildContext context) =>
                  new PlayerVideoAndPopPage(_taegukSaJang),
                ),
              );
            }
        ),
        new GestureDetector(
            child: Card(
              child: ListTile(
                title: Text('Taeguk Oh Jang', style: _biggerFont),
              ),
            ),
            onTap: () {
              Navigator.push<PlayerVideoAndPopPage>(
                context,
                MaterialPageRoute<PlayerVideoAndPopPage>(
                  builder: (BuildContext context) =>
                  new PlayerVideoAndPopPage(_taegukOhJang),
                ),
              );
            }
        ),
        new GestureDetector(
            child: Card(
              child: ListTile(
                title: Text('Taeguk Yuk Jang', style: _biggerFont),
              ),
            ),
            onTap: () {
              Navigator.push<PlayerVideoAndPopPage>(
                context,
                MaterialPageRoute<PlayerVideoAndPopPage>(
                  builder: (BuildContext context) =>
                  new PlayerVideoAndPopPage(_taegukYukJang),
                ),
              );
            }
        ),
        new GestureDetector(
            child: Card(
              child: ListTile(
                title: Text('Taeguk Chil Jang', style: _biggerFont),
              ),
            ),
            onTap: () {
              Navigator.push<PlayerVideoAndPopPage>(
                context,
                MaterialPageRoute<PlayerVideoAndPopPage>(
                  builder: (BuildContext context) =>
                  new PlayerVideoAndPopPage(_taegukChilJang),
                ),
              );
            }
        ),
        new GestureDetector(
            child: Card(
              child: ListTile(
                title: Text('Taeguk Pal Jang', style: _biggerFont),
              ),
            ),
            onTap: () {
              Navigator.push<PlayerVideoAndPopPage>(
                context,
                MaterialPageRoute<PlayerVideoAndPopPage>(
                  builder: (BuildContext context) =>
                  new PlayerVideoAndPopPage(_taegukPalJang),
                ),
              );
            }
        ),
      ],
    );
  }
}
