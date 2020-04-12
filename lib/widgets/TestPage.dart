import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handoryu/widgets/video/VideoPlayerWidget.dart';

import 'CustomAppBar.dart';
import 'NavDrawer.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: CustomAppBar(),
      body: TestPageBody(),
    );
  }
}

class TestPageBody extends StatelessWidget {
  TestPageBody({Key key}) : super(key: key);
  final _taegukIlJang = 'assets/videos/1_taeguk_il_jang.mp4';

  @override
  Widget build(BuildContext context) {
    return new VideoPlayerWidget(_taegukIlJang, 'Taeguk Il Jang');
  }
}
